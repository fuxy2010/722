/*
 *
 * @APPLE_LICENSE_HEADER_START@
 * 
 * Copyright (c) 1999-2003 Apple Computer, Inc.  All Rights Reserved.
 * 
 * This file contains Original Code and/or Modifications of Original Code
 * as defined in and that are subject to the Apple Public Source License
 * Version 2.0 (the 'License'). You may not use this file except in
 * compliance with the License. Please obtain a copy of the License at
 * http://www.opensource.apple.com/apsl/ and read it before using this
 * file.
 * 
 * The Original Code and all software distributed under the License are
 * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
 * Please see the License for the specific language governing rights and
 * limitations under the License.
 * 
 * @APPLE_LICENSE_HEADER_END@
 *
 */
/*
    File:       OSQueue.h

    Contains:   implements OSQueue class
                    
    
*/

#ifndef _OSQUEUE_H_
#define _OSQUEUE_H_

#include "MyAssert.h"
#include "OSHeaders.h"
#include "OSMutex.h"
#include "OSCond.h"
#include "OSThread.h"

#define OSQUEUETESTING 0

class OSQueue;

//fym ¶ÓÁÐ³ÉÔ±Àà£¬³ÉÔ±Êµ¼ÊÊÇÒ»¸övoid*Ö¸Õë
class OSQueueElem {
    public:
        OSQueueElem(void* enclosingObject = NULL) : fNext(NULL), fPrev(NULL), fQueue(NULL),
                                                    fEnclosingObject(enclosingObject) {}
        virtual ~OSQueueElem() { Assert(fQueue == NULL); }

        Bool16 IsMember(const OSQueue& queue) { return (&queue == fQueue); }//¸Ã³ÉÔ±ÊÇ·ñ´ÓÊôÓÚ¶ÓÁÐqueue
        Bool16 IsMemberOfAnyQueue()     { return fQueue != NULL; }//¸Ã³ÉÔ±ÊÇ·ñ´ÓÊôÓÚÄ³Ò»£¨¶ø²»ÊÇ¡°ÈÎºÎ¡±£©¶ÓÁÐ
        void* GetEnclosingObject()  { return fEnclosingObject; }//»ñÈ¡¸Ã³ÉÔ±Êµ¼ÊÖ¸ÏòµÄ¶ÔÏóÖ¸Õë
        void SetEnclosingObject(void* obj) { fEnclosingObject = obj; }//Ïò¸Ã³ÉÔ±Êµ¼ÊÖ¸ÏòµÄ¶ÔÏóÖ¸Õë¸³Öµ

        OSQueueElem* Next() { return fNext; }
        OSQueueElem* Prev() { return fPrev; }
        OSQueue* InQueue()  { return fQueue; }//»ñÈ¡¸Ã³ÉÔ±ËùÔÚ¶ÓÁÐµÄÖ¸Õë
        inline void Remove();//µ÷ÓÃ¸Ã³ÉÔ±ËùÔÚ¶ÓÁÐµÄremoveº¯Êý£¬½«¸Ã³ÉÔ±´Ó¸Ã¶ÓÁÐÖÐÉ¾³ý,µ«²»ÐÞ¸Ä¸Ã³ÉÔ±´æ´¢µÄ¶ÔÏó

    private:

        OSQueueElem*    fNext;
        OSQueueElem*    fPrev;
        OSQueue *       fQueue;//¸Ã³ÉÔ±ËùÔÚ¶ÓÁÐµÄÖ¸Õë£¬Èç¹û¸ÃÖ¸Õë²»Îª¿Õ£¬±íÃ÷¸Ã³ÉÔ±ÒÑ¼ÓÈëÄ³Ò»¶ÓÁÐ£¬·ñÔòÎªÉ¢±øÓÎÓÂ
        void*           fEnclosingObject;//¸Ä³ÉÔ±Êµ¼ÊÖ¸ÏòµÄ¶ÔÏóÖ¸Õë

        friend class    OSQueue;
};

//fym ¶ÓÁÐÀà
class OSQueue {
    public:
        OSQueue();
        ~OSQueue() {}

		//²åÈë¹æÂÉ,ÐÂ²åÈëµÄ³ÉÔ±³ÉÎªÉÚ±ø(fSentinel)µÄnext£¬²¢Îª¶ÓÁÐÔ­µÚÒ»¸ö³ÉÔ±µÄprev£¨Í¬Ê±ÐÂ³ÉÔ±µÄnextÊÇÔ­µÚÒ»¸ö³ÉÔ±£©
		//ÉÚ±øµÄnextÓÀÔ¶ÊÇ¶ÓÁÐÖÐµÚÒ»¸ö³ÉÔ±
		//×¢Òâ!Èç¹û¸Ã³ÉÔ±ÒÑÓÐËùÊôµÄ¶ÓÁÐ(fQueue!=NULL)£¬Ôò²»²åÈë
		//ÐÂ²åÈëµÄ³ÉÔ±ÊÇ¶ÓÁÐtail£¬×îÏÈ²åÈëµÄÊÇ¶ÓÁÐhead,»»ÑÔÖ®£¬ÉÚ±øµÄnextÓÀÔ¶Ö¸Ïòtail£¬prevÓÀÔ¶Ö¸Ïòhead
		//×¢Òâ¶ÓÁÐµÄË³ÐòÊÇ,ÐÂ³ÉÔ±µÄnextÊÇ¾É³ÉÔ±£¬¾É³ÉÔ±µÄprevÊÇÐÂ³ÉÔ±£¬headÎª¾É£¬tailÎªÐÂ
        void            EnQueue(OSQueueElem* object);
		//È¡³ö¶ÓÁÐheadµÄ³ÉÔ±£¬²¢½«¸Ã³ÉÔ±µÄfQueueÖÃ¿Õ
        OSQueueElem*    DeQueue();

        OSQueueElem*    GetHead() { if (fLength > 0) return fSentinel.fPrev; return NULL; }
        OSQueueElem*    GetTail() { if (fLength > 0) return fSentinel.fNext; return NULL; }
        UInt32          GetLength() { return fLength; }
        
        void            Remove(OSQueueElem* object);

		//fym OSMutex*		GetMutex() { return &fMutex; }//fym

		void			Clear();//fym

#if OSQUEUETESTING
        static Bool16       Test();
#endif

    protected:

        OSQueueElem     fSentinel;//¸ÚÉÚ£¿
        UInt32          fLength;
		//fym OSMutex             fMutex;//fym
};

//±éÀú¶ÓÁÐ
class OSQueueIter
{
    public:
        OSQueueIter(OSQueue* inQueue) : fQueueP(inQueue), fCurrentElemP(inQueue->GetHead()) {}

        OSQueueIter(OSQueue* inQueue, OSQueueElem* startElemP ) : fQueueP(inQueue)
        {
                if ( startElemP )
                {   Assert( startElemP->IsMember(*inQueue ) );
                    fCurrentElemP = startElemP;
                
                }
                else
                    fCurrentElemP = NULL;
        }

        ~OSQueueIter() {}
        
        void            Reset() { fCurrentElemP = fQueueP->GetHead(); }
        
        OSQueueElem*    GetCurrent() { return fCurrentElemP; }
		//±éÀú¶ÓÁÐ£¬±éÀúË³ÐòÎª´Ó¾ÉÖÁÐÂ£¬¼´´ÓheadÏòtail
        void            Next();
        
        Bool16          IsDone() { return fCurrentElemP == NULL; }
        
    private:
    
        OSQueue*        fQueueP;
        OSQueueElem*    fCurrentElemP;
};

//¼Ó»¥³âËø±£»¤µÄ¶ÓÁÐ
class OSQueue_Blocking
{
    public:
        OSQueue_Blocking() {}
        ~OSQueue_Blocking() {}
        
        OSQueueElem*    DeQueueBlocking(OSThread* inCurThread, SInt32 inTimeoutInMilSecs);
        OSQueueElem*    DeQueue();//will not block
        void            EnQueue(OSQueueElem* obj);
        
        OSCond*         GetCond()   { return &fCond; }
        OSQueue*        GetQueue()  { return &fQueue; }
        
    private:

        OSCond              fCond;
        OSMutex             fMutex;
        OSQueue             fQueue;
};


void    OSQueueElem::Remove()
{
    if (fQueue != NULL)
        fQueue->Remove(this);
}
#endif //_OSQUEUE_H_
