 '$Revision: 30.5 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IfFail: fb Layout: layout = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IndexableSize: s IfFail: fb Layout: layout = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o Size: size FillingWith: filler IfFail: fb Layout: layout = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         cloneLocalObject: theOriginal IfFail: fb = ( |
            | 
            cloneLocalObject: theOriginal Size: 0 FillingWith: 0 IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         cloneLocalObject: theOriginal Size: size FillingWith: filler IfFail: fb = ( |
            | 
                 cloneLocalObject: theOriginal
                             Size: size
                      FillingWith: filler
            UnsegregatedBytesSize: (numberOfUnsegregatedBytesIn: theOriginal IfFail: fb)
                           IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         cloneLocalObject: theOriginalObjectOrMarkValue Size: size FillingWith: filler UnsegregatedBytesSize: nBytes IfFail: fb = ( |
             failBlock.
             maxWordSize.
             nextWordIndex.
             pnmcCreationOK <- bootstrap stub -> 'globals' -> 'true' -> ().
             theClone.
             theCloneAddress.
            | 

            "Warning: This method violates invariants:
                      - theCloneAddress is a pointer that looks like a Smi.
                      - theClone references uninitialized storage.
                      - Using heap space before it has been allocated.
                      - If the object we cloned held a bytes part pointer,
                        then two objects will point to the same bytes part
                        when this method exits.
                        This condition must be fixed before the next GC run."

            _NoGCAllowed.

            "Clone primitive fail block before we start allocating space"
            failBlock: [|:e. r|
              theClone: nil. "So that the GC doesn't try to keep it alive."
              __BranchIfFalse: (e _Eq: 'outOfMemoryError') To: 'someOtherKindOfError'.
              vmKit garbageCollector scavenge.
              r: cloneLocalObject: theOriginalObjectOrMarkValue Size: size FillingWith: filler UnsegregatedBytesSize: nBytes IfFail: raiseError.
              __BranchTo: 'done'.
              __DefineLabel: 'someOtherKindOfError'.
              r: fb value: e.
              __DefineLabel: 'done'.
              _TheVM vmKit primitives shouldNotCreateAnyPolymorphicNMethodCachesForNow: pnmcCreationOK.
              ^ r
            ].

            nextWordIndex: indexToStartCopyingContents.

            pnmcCreationOK: _TheVM vmKit primitives shouldNotCreateAnyPolymorphicNMethodCachesForNow.
            _TheVM vmKit primitives shouldNotCreateAnyPolymorphicNMethodCachesForNow: true.

            theCloneAddress: _TheVM universe allocationSpace objsTop.

            "Note: From this point onwards we must not cause any further
                   allocations from the heap.  Hence we use some primitives to
                   avoid block cloning in place of theVM, +, /, *, -, and <=."

            maxWordSize:   (_TheVM universe allocationSpace objsLimit
                             _IntSub: theCloneAddress)
                             _IntDiv: oopSize.

            __BranchIfFalse: (maxWordSize _IntLE: nextWordIndex)
                         To: 'enoughMemoryForHeader'.

            failBlock value: 'outOfMemoryError'.
            _Breakpoint: 'unreachable'.

            __DefineLabel: 'enoughMemoryForHeader'.

            __BranchIfTrue: theOriginalObjectOrMarkValue _IsSmi To: 'justCreateAnEmptyObject'.

            theClone:          copyMarkValue: (markValueOf: theOriginalObjectOrMarkValue)
                       IntoObjectWithAddress: theCloneAddress
                                      IfFail: failBlock.

            nextWordIndex:  copyContentsOfLocalObject: theOriginalObjectOrMarkValue
                                IntoObjectWithAddress: theCloneAddress
                                         StartingFrom: nextWordIndex
                                         NotExceeding: maxWordSize
                                 AndLeaveRoomForBytes: nBytes
                                               IfFail: failBlock.

            __BranchTo: 'doneCopyingContents'.
            __DefineLabel: 'justCreateAnEmptyObject'.

            theClone: copyMarkValue: theOriginalObjectOrMarkValue IntoObjectWithAddress: theCloneAddress IfFail: failBlock.

            __DefineLabel: 'doneCopyingContents'.


            nextWordIndex:  fillNewLocalObjectWithAddress: theCloneAddress
                                                     With: filler
                                                     Size: size
                                             StartingFrom: nextWordIndex
                                             NotExceeding: maxWordSize
                                                   IfFail: failBlock.

            finishInitializingLocalClone: theClone WithAddress: theCloneAddress SizeInWords: nextWordIndex.

            _TheVM vmKit primitives shouldNotCreateAnyPolymorphicNMethodCachesForNow: pnmcCreationOK.
            theClone).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         cloneRemoteObject: theOriginal IfFail: fb = ( |
            | 
            notImplementedYet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         copyContentsOfLocalObject: theOriginal IntoObjectWithAddress: theCloneAddress StartingFrom: startingWordIndex NotExceeding: maxWordSize AndLeaveRoomForBytes: nBytes IfFail: failBlock = ( |
             mm.
             nextWordIndex.
             oop.
             theOriginalAddress.
            | 

            __BranchIfTrue: (nBytes _IntEQ: 0) To: 'noBytes'.
            _Breakpoint: 'hmm, this method should have been overridden for unsegregated byteVectors'.
            __DefineLabel: 'noBytes'.

            nextWordIndex: startingWordIndex.

            mm: machineMemory.
            theOriginalAddress: addressOfLocalMem: theOriginal.

            "Copy contents until we reach the next mark word."

            __DefineLabel: 'copyContentsLoop'.

              __BranchIfTrue: (mm isMarkAtOffset: nextWordIndex From: theOriginalAddress IfFail: true)
                          To: 'copyContentsDone'.

              oop:  mm oopAtOffset: nextWordIndex From: theOriginalAddress             IfFail: failBlock.
                    mm    atOffset: nextWordIndex From:    theCloneAddress PutOop: oop IfFail: failBlock.

              nextWordIndex: nextWordIndex _IntAdd: 1.

              __BranchIfFalse: (maxWordSize _IntLE: nextWordIndex)
                           To: 'copyContentsLoop'.

            failBlock value: 'outOfMemoryError'.
            _Breakpoint: 'unreachable'.

            __DefineLabel: 'copyContentsDone'.

            nextWordIndex).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         copyMarkValue: markValue IntoObjectWithAddress: theCloneAddress IfFail: failBlock = ( |
             inPlaceOID.
             newMarkValue.
             nonOIDMask.
             theClone.
             theCloneOID.
            | 

            theCloneOID: _TheVM withoutCloningAnythingRecordNewObjectWithAddress: theCloneAddress IfFail: failBlock.
            theClone: memForAddress: theCloneAddress OID: theCloneOID.

            nonOIDMask: -1 _IntSub: layouts mark oidField mask.
            inPlaceOID: layouts mark oidField wordForValue: theCloneOID.
            newMarkValue: inPlaceOID || (markValue && nonOIDMask).
            [todo cloning]. "Not implemented: must clear some bits in the copied mark."
            for: theClone SetMarkValue: newMarkValue.

            theClone).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         createEmptyObjectWithMarkValue: markValue Size: size FillingWith: filler IfFail: fb = ( |
            | 
                 cloneLocalObject: markValue
                             Size: size
                      FillingWith: filler
            UnsegregatedBytesSize: 0
                           IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         fillNewLocalObjectWithAddress: theCloneAddress With: filler Size: size StartingFrom: startingWordIndex NotExceeding: maxWordSize IfFail: failBlock = ( |
             i.
             mm.
            | 
            mm: machineMemory.
            i: startingWordIndex.

            __DefineLabel: 'fillerLoop'.

              __BranchIfFalse: (i _IntLT: size)
                           To: 'fillerDone'.

              mm atOffset: i From: theCloneAddress PutOop: filler IfFail: failBlock.

              i: i _IntAdd: 1.

              __BranchIfTrue: (i _IntLT: maxWordSize)
                          To: 'fillerLoop'.

            failBlock value: 'outOfMemoryError'.
            _Breakpoint: 'unreachable'.

            __DefineLabel: 'fillerDone'.

            i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         finishInitializingLocalClone: theClone WithAddress: theCloneAddress SizeInWords: sizeInWords = ( |
             objsTop.
            | 

            "Remember that this method is overridden for objVectors."

            __BranchIfTrue: (theCloneAddress _Eq: _TheVM universe allocationSpace objsTop) To: 'noCloningHappened'.
            _Breakpoint: 'Uh-oh! We goofed - something got cloned during the cloning algorithm.'.
            __DefineLabel: 'noCloningHappened'.

            objsTop: theCloneAddress _IntAdd:   sizeInWords _IntMul: oopSize.
            _TheVM universe allocationSpace objsTop: objsTop.

            _TheVM universe allocationSpace setLocalTrailingMarkAt: objsTop.

            "Note: From this point onwards it is once again safe to allocate
                   from the heap."

            theClone).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         indexToStartCopyingContents = ( |
            | 
            "If it's a compact object, mapIndex will be the index right after
             the header, which is where we want to start copying. If it's a
             non-compact object, mapIndex will be the index of the map, which
             again is where we want to start copying."
            mapIndex).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> () From: ( | {
         'Category: cloning\x7fCategory: double-dispatch\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         numberOfUnsegregatedBytesIn: o IfFail: failBlock = ( |
            | 
            0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'objVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         finishInitializingLocalClone: theClone WithAddress: theCloneAddress SizeInWords: sizeInWords = ( |
             io.
            | 
            io: indexableOriginOfObjectWithAddress: theCloneAddress.
            forObjectWithAddress: theCloneAddress SetIndexableSize:  sizeInWords _IntSub: io.

            resend.finishInitializingLocalClone: theClone WithAddress: theCloneAddress SizeInWords: sizeInWords).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         cloneLocalObject: theOriginal IndexableSize: byteSize IfFail: fb = ( |
            | 
                 cloneLocalObject: theOriginal
                             Size: 0   "unused"
                      FillingWith: 666 "unused"
            UnsegregatedBytesSize: byteSize
                           IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         copyBytesFrom: o IntoObjectWithAddress: targetObjAddress IfFail: fb = ( |
            | 
            _Breakpoint: 'not implemented yet').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         copyBytesFrom: o To: c IfFail: fb = ( |
             newSize.
             theOriginalSize.
            | 
            theOriginalSize:   indexableSizeOf: o IfFail: [|:e| ^ fb value: e].
                    newSize:   theOriginalSize.

            copyBytesFrom: o
             WhichHasSize: theOriginalSize
                       To: c
             WhichHasSize: newSize
              FillingWith: 0
                   IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         copyBytesFrom: o To: c IndexableSize: newSize FillingWith: filler IfFail: fb = ( |
             theOriginalSize.
            | 
            theOriginalSize:   indexableSizeOf: o IfFail: [|:e| ^ fb value: e].

            copyBytesFrom: o
             WhichHasSize: theOriginalSize
                       To: c
             WhichHasSize: newSize
              FillingWith: filler
                   IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         copyBytesFrom: srcBV WhichHasSize: srcSize To: dstBV WhichHasSize: dstSize FillingWith: filler IfFail: fb = ( |
             failBlock.
            | 
            "Optimization: Don't keep cloning this failblock over and over. -- Adam, 6/06"
            failBlock: [|:e| ^ fb value: e].

            "This could be optimized further by going deeper in the called methods
             and eliminating the use of blocks in them. But hopefully we'll implement
             inlining someday and the problem will go away. -- Adam, 6/06"

            for: srcBV AtMost: dstSize IndexablesDo: [|:x. :i|
              for: dstBV UncheckedIndexableAt: i Put: x IfFail: failBlock.
            ] IfFail: failBlock.

            srcSize upTo: dstSize By: 1 WithoutCloningDo: [|:i|
              for: dstBV UncheckedIndexableAt: i Put: filler IfFail: failBlock.
            ].

            dstBV).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         copyContentsOfLocalObject: theOriginal IntoObjectWithAddress: theCloneAddress StartingFrom: startingWordIndex NotExceeding: maxWordSize AndLeaveRoomForBytes: nBytes IfFail: failBlock = ( |
             endWordIndex.
             mm.
             nextWordIndex.
             oop.
             origin.
             theOriginalAddress.
            | 

            nextWordIndex: startingWordIndex.

            mm: machineMemory.
            theOriginalAddress: addressOfLocalMem: theOriginal.

            "Can't copy contents until we reach the next mark word, because a sequence
             of bytes might look like a mark. So we've gotta only copy the oops over,
             but calculate the size of the new bytevector so that we can leave room
             for the bytes (which will be copied over later.) -- Adam 4/06"

            origin: for: theOriginal At: indexableOriginField fixedIndex IfFail: failBlock.
            endWordIndex: origin _IntAdd: oopsNeededToHoldBytes: nBytes.

            __BranchIfFalse: (maxWordSize _IntLE: endWordIndex)
                         To: 'copyNonIndexableContentsLoop'.

            failBlock value: 'outOfMemoryError'.
            _Breakpoint: 'unreachable'.

            __DefineLabel: 'copyNonIndexableContentsLoop'.

              __BranchIfTrue: (nextWordIndex _IntEQ: origin)
                          To: 'copyNonIndexableContentsDone'.

              oop:  mm oopAtOffset: nextWordIndex From: theOriginalAddress             IfFail: failBlock.
                    mm    atOffset: nextWordIndex From:    theCloneAddress PutOop: oop IfFail: failBlock.

              nextWordIndex: nextWordIndex _IntAdd: 1.

              __BranchTo: 'copyNonIndexableContentsLoop'.

            _Breakpoint: 'unreachable'.

            __DefineLabel: 'copyNonIndexableContentsDone'.

            mm atOffset: indexableSizeField fixedIndex From: theCloneAddress PutOop: nBytes IfFail: failBlock.

            endWordIndex).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         fillNewLocalObjectWithAddress: theCloneAddress With: filler Size: size StartingFrom: startingWordIndex NotExceeding: maxWordSize IfFail: failBlock = ( |
            | 
            "Should not need to do anything here - not an obj vector."
            startingWordIndex).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'unsegregatedByteVector' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         numberOfUnsegregatedBytesIn: o IfFail: failBlock = ( |
            | 
            for: o At: indexableSizeField fixedIndex IfFail: failBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'localObjectLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IfFail: fb Layout: layout = ( |
            | 
            layout cloneLocalObject: o IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'localObjectLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IndexableSize: s IfFail: fb Layout: layout = ( |
            | 
            layout cloneLocalObject: o IndexableSize: s IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'localObjectLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o Size: size FillingWith: filler IfFail: fb Layout: layout = ( |
            | 
            layout cloneLocalObject: o Size: size FillingWith: filler IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'blockMap') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IfFail: fb = ( |
            | o).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'blockMap') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         clone: o Size: size FillingWith: filler IfFail: fb = ( |
            | 
            size = myLayout numberOfWordsInABlock  ifFalse: [
              ^ fb value: 'not permitted'
            ].
            o).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'byteVectorMap') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IfFail: fb = ( |
             c.
            | 
            c: resend.clone: o IfFail: [|:e| ^ fb value: e].
            myLayout copyBytesFrom: o To: c IfFail: [|:e| ^ fb value: e].
            c).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'byteVectorMap') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         clone: o Size: size FillingWith: filler IfFail: fb = ( |
             c.
            | 
            c: resend.clone: o Size: size FillingWith: filler IfFail: [|:e| ^ fb value: e].
            myLayout copyBytesFrom: o To: c IfFail: [|:e| ^ fb value: e].
            c).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'byteVectorMap') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         clone: o UncheckedIndexableSize: size FillingWith: filler IfFail: fb = ( |
             c.
            | 
            c: theVM lens clone: o IndexableSize: size IfFail: [|:e| ^ fb value: e] Layout: myLayout.
            myLayout copyBytesFrom: o To: c IndexableSize: size FillingWith: filler IfFail: [|:e| ^ fb value: e].
            c).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'map') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o = ( |
            | clone: o IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'map') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IfFail: fb = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'map') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IndexableSize: size FillingWith: filler = ( |
            | 
            clone: o IndexableSize: size FillingWith: filler IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'map') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IndexableSize: size FillingWith: filler IfFail: fb = ( |
            | 
            fb value: 'not a vector').
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'slotsMap') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IfFail: fb = ( |
            | 
            theVM lens clone: o IfFail: fb Layout: myLayout).
        } | ) 

 bootstrap addSlotsTo: ((bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'maps') \/-> 'slotsMap') -> 'parent' -> () From: ( | {
         'Category: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         clone: o Size: size FillingWith: filler IfFail: fb = ( |
            | 
            theVM lens clone: o Size: size FillingWith: filler IfFail: fb Layout: myLayout).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'memoryLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IfFail: fb Layout: layout = ( |
            | 
            layout cloneRemoteObject: o IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'memoryLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o IndexableSize: s IfFail: fb Layout: layout = ( |
            | 
            layout cloneRemoteObject: o IndexableSize: s IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'memoryLens' -> () From: ( | {
         'Category: double-dispatch\x7fCategory: cloning\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         clone: o Size: size FillingWith: filler IfFail: fb Layout: layout = ( |
            | 
            layout cloneRemoteObject: o Size: size FillingWith: filler IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: vmKitCloning InitialContents: FollowSlot'
        
         vmKitCloning = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules vmKitCloning.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () From: ( | {
         'ModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () From: ( | {
         'ModuleInfo: Module: vmKitCloning InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () From: ( | {
         'ModuleInfo: Module: vmKitCloning InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () From: ( | {
         'ModuleInfo: Module: vmKitCloning InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () From: ( | {
         'ModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.5 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitCloning' -> () From: ( | {
         'ModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'integer' -> () From: ( | {
         'Category: klein\x7fCategory: iteration\x7fModuleInfo: Module: vmKitCloning InitialContents: FollowSlot\x7fVisibility: public'
        
         upTo: end By: step WithoutCloningDo: block = ( |
             i.
            | 
            [todo optimize].
            "Optimization: it's useful to have a version of
             upTo:Do: that doesn't need to clone any blocks.
             Once we have a more general inlining mechanism,
             remove this method. -- Adam, 7/06"

            i: self.
            __DefineLabel: 'loopStart'.
            __BranchIfFalse: (i _IntLT: end) To: 'done'.
                block value: i With: i.
                i: i _IntAdd: step.
            __BranchTo: 'loopStart'.

            __DefineLabel: 'done'.
            nil).
        } | ) 



 '-- Side effects'

 globals modules vmKitCloning postFileIn
