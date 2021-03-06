 '$Revision: 30.15 $'
 '
Copyright 2006 Sun Microsystems, Inc. All rights reserved. Use is subject to license terms.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         do: blk = ( |
            | 
            blk value: gprs.
            blk value: fprs.
            blk value: iccOperands.
            blk value: fccOperands.
            blk value: membarOperands.
            blk value: privilegedRegisters.
            blk value: fields.
            blk value: instructionTemplates.
            blk value: pseudoInstructionTemplates.
            blk value: instructionAssemblyMethods.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         fccOperands = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators registers copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fccOperands.

CopyDowns:
globals assemblerSystems framework generators registers. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fccOperands parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         maxReg = 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         minReg = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'registers' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         proto = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> 'proto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants parent proto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> 'proto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fccOperands parent proto.

CopyDowns:
globals assemblerSystems framework generators constants parent proto. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> 'proto' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fccOperands parent proto parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         nameSpace = ( |
            | assemblerSystems sparc fccOperands).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators gprs parent proto parent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fccOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         regPrefix = 'fcc'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         fields = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators fields copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields.

CopyDowns:
globals assemblerSystems framework generators fields. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fCategory: prototypes\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         alignedIntOperandField = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'alignedIntOperandField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators fields parent alignedIntOperandField copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'alignedIntOperandField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent alignedIntOperandField.

CopyDowns:
globals assemblerSystems framework generators fields parent alignedIntOperandField. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'alignedIntOperandField' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'alignedIntOperandField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent alignedIntOperandField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'alignedIntOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'fields' -> 'parent' -> 'alignedIntOperandField' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         sparcOperandFieldVariations = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent sparcOperandFieldVariations.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'alignedIntOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         sparcOperandFieldVariations* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fCategory: prototypes\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         branchDispOperandField = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators fields parent branchDispOperandField copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent branchDispOperandField.

CopyDowns:
globals assemblerSystems framework generators fields parent branchDispOperandField. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent branchDispOperandField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         sparcOperandFieldVariations* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'branchDispOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         unfilteredLegalTestCases = ( |
            | 
            "bug in gnu asm, exclude min"
            "is this hack needed for sparc?"
            "Yes! Just try call 0x80000004 + . -- Ungar 7/02"
            ((resend.unfilteredLegalTestCases asSet remove: min IfAbsent: raiseError) 
              remove: min + grain IfAbsent: raiseError)
              asVector sort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateAll = ( |
            | 
            start.
            generateConstantFields.
            generateOperandFields.
            generateIgnoredFields.
            generateReservedFields.
            generateOptionFields.
            finish).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: constant fields\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateConstantFields = ( |
            | 
            assignSubcategoryFromSender.

            generateConstantField: 'bits_29_29'  Bits: 29 & 29.
            generateConstantField: 'bits_29_27'  Bits: 29 & 27.
            generateConstantField: 'bits_28_28'  Bits: 28 & 28.
            generateConstantField: 'bits_24_22'  Bits: 24 & 22.
            generateConstantField: 'bits_18_18'  Bits: 18 & 18.
            generateConstantField: 'bits_18_14'  Bits: 18 & 14.
            generateConstantField: 'bits_13_13'  Bits: 13 & 13.
            generateConstantField: 'cond_28_25'  Bits: 28 & 25.
            generateConstantField: 'cond_17_14'  Bits: 17 & 14.
            generateConstantField: 'fcnc'        Bits: 29 & 25.
            generateConstantField: 'i'           Bits: 13 & 13.
            generateConstantField: 'movTypeBit'  Bits: 18 & 18.
            generateConstantField: 'op'          Bits: 31 & 30.
            generateConstantField: 'op2'         Bits: 24 & 22.
            generateConstantField: 'op3'         Bits: 24 & 19.
            generateConstantField: 'opf'         Bits: 13 &  5.
            generateConstantField: 'opfLow'      Bits: 10 &  5.
            generateConstantField: 'fmovTypeBit' Bits: 13 & 13.
            generateConstantField: 'rcond_27_25' Bits: 27 & 25.
            generateConstantField: 'rcond_12_10' Bits: 12 & 10.
            generateConstantField: 'rdc'         Bits: 29 & 25.
            generateConstantField: 'rs1c'        Bits: 18 & 14.
            generateConstantField: 'x'           Bits: 12 & 12).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: ignored fields\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateIgnoredFields = ( |
            | 
            assignSubcategoryFromSender.

            generateIgnoredField: 'const22' Bits: 21 & 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         generateOperandFields = ( |
            | 
            assignSubcategoryFromSender.

            ((generateIntOperandField: 'fcn'          Bits: 29 & 25  Keyword: 'Function')
                withUntestableIllegalCase: -1) withUntestableIllegalCase: 32.
             (generateIntOperandField: 'imm22'        Bits: 21 &  0  Keyword: '') beSignedOrUnsigned.
              generateIntOperandField: 'immAsi'       Bits: 12 &  5  Keyword: 'ASI'.
              generateIntOperandField: 'membarMask'   Bits:  6 &  0  Keyword: ''.
              generateIntOperandField: 'shcnt32'      Bits:  4 &  0  Keyword: 'WithI'.
              generateIntOperandField: 'shcnt64'      Bits:  5 &  0  Keyword: 'WithI'.
             (generateIntOperandField: 'simm10'       Bits:  9 &  0  Keyword: 'WithI') beSigned
                withUntestableIllegalCase: -513.
             (generateIntOperandField: 'simm11'       Bits: 10 &  0  Keyword: 'FromI') beSigned
                withUntestableIllegalCase: -1025.
             (generateIntOperandField: 'simm13'       Bits: 12 &  0  Keyword: 'WithI') beSigned.
            ((generateIntOperandField: 'swTrapNumber' Bits:  6 &  0  Keyword: 'Number')
                withUntestableIllegalCase: -65) withUntestableIllegalCase: 128.

            (generateBranchDispField: 'disp30' Bits: 29 & 0           Keyword: 'To') beBackpatchable.
            (generateBranchDispField: 'disp22' Bits: 21 & 0           Keyword: 'To') beBackpatchable.
            (generateBranchDispField: 'disp19' Bits: 18 & 0           Keyword: 'To') beBackpatchable.
            (generateBranchDispField: 'd16'    Bits: 21 & 20 & 13 & 0 Keyword: 'To') beBackpatchable.

            generateSymbolicOperandField: 'cc'           Bits: 21 & 20 Keyword: ''         In: iccOperands.
            generateSymbolicOperandField: 'fcc_26_25'    Bits: 26 & 25 Keyword: ''         In: fccOperands.
            generateSymbolicOperandField: 'fcc_21_20'    Bits: 21 & 20 Keyword: ''         In: fccOperands.
            generateSymbolicOperandField: 'fmovicc'      Bits: 12 & 11 Keyword: 'I'        In: iccOperands.
            generateSymbolicOperandField: 'fmovfcc'      Bits: 12 & 11 Keyword: 'F'        In: fccOperands.
            generateSymbolicOperandField: 'movfcc'       Bits: 12 & 11 Keyword: 'F'         In: fccOperands.
            generateSymbolicOperandField: 'movicc'       Bits: 12 & 11 Keyword: 'I'         In: iccOperands.
            generateSymbolicOperandField: 'rs1'          Bits: 18 & 14 Keyword: 'From'     In: gprs.
            generateSymbolicOperandField: 'rs2'          Bits:  4 &  0 Keyword: 'With'     In: gprs.
            generateSymbolicOperandField: 'rd'           Bits: 29 & 25 Keyword: 'To'       In: gprs.
            generateSymbolicOperandField: 'tcc'          Bits: 12 & 11 Keyword: ''         In: iccOperands.

            "need float keywords so that asm method for ldd float will differ in name from one for ldd int"
            "-- Ungar 7/02"
            setSingleFloat:    (generateSymbolicOperandField: 'sfrs1' Bits: 18 & 14                Keyword: 'From'      In: fprs).
            setSingleFloat:    (generateSymbolicOperandField: 'sfrs2' Bits:  4 &  0                Keyword: 'With'      In: fprs).
            setSingleFloat:    (generateSymbolicOperandField: 'sfrd'  Bits: 29 & 25                Keyword: 'ToFloat'   In: fprs).
            setDoubleFloat:    (generateSymbolicOperandField: 'dfrs1' Bits: 14 & 14 & 18 & 15 & -1 Keyword: 'From'      In: fprs).
            setDoubleFloat:    (generateSymbolicOperandField: 'dfrs2' Bits:  0 &  0 &  4 &  1 & -1 Keyword: 'With'      In: fprs).
            setDoubleFloat:    (generateSymbolicOperandField: 'dfrd'  Bits: 25 & 25 & 29 & 26 & -1 Keyword: 'ToFloat'   In: fprs).
            setQuadrupleFloat: (generateSymbolicOperandField: 'qfrs1' Bits: 14 & 14 & 18 & 16 & -2 Keyword: 'From'      In: fprs).
            setQuadrupleFloat: (generateSymbolicOperandField: 'qfrs2' Bits:  0 &  0 &  4 &  2 & -2 Keyword: 'With'      In: fprs).
            setQuadrupleFloat: (generateSymbolicOperandField: 'qfrd'  Bits: 25 & 25 & 29 & 27 & -2 Keyword: 'ToFloat'   In: fprs).

             generateSymbolicOperandField: 'privReg'   Bits: 18 & 14 Keyword: ''         In: privilegedRegisters.

            (generateSymbolicOperandField: 'rdPrivReg' Bits: 29 & 25 Keyword: 'Register' In: privilegedRegisters)
                setMinValue: 0 MaxValue: 14 Radix: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: option fields\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateOptionFields = ( |
            | 
            assignSubcategoryFromSender.

            ((generateOptionField: 'a'  At:  29 & 29)  
                withOption: ''    Value: 0) 
                withOption: '_a'  Value: 1  ExternalName: ',a'.

            (((generateOptionField: 'p'  At:  19 & 19)
                withOption: ''    Value: 1)
                withOption: '_pn'  Value: 0  ExternalName: ',pn')
                withOption: '_pt'  Value: 1  ExternalName: ',pt'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: reserved fields\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateReservedFields = ( |
            | 
            assignSubcategoryFromSender.

            generateReservedField: 'res_29_29' Bits: 29 & 29.
            generateReservedField: 'res_29_25' Bits: 29 & 25.
            generateReservedField: 'res_18_14' Bits: 18 & 14.
            generateReservedField: 'res_18_0' Bits: 18 & 0.
            generateReservedField: 'res_13_0' Bits: 13 & 0.
            generateReservedField: 'res_12_7' Bits: 12 & 7.
            generateReservedField: 'res_12_5' Bits: 12 & 5.
            generateReservedField: 'res_12_0' Bits: 12 & 0.
            generateReservedField: 'res_11_6' Bits: 11 & 6.
            generateReservedField: 'res_11_5' Bits: 11 & 5.
            generateReservedField: 'res_10_7' Bits: 10 & 7.
            generateReservedField: 'res_10_5' Bits: 10 & 5.
            generateReservedField: 'res_9_5'  Bits: 9 & 5).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fCategory: prototypes\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         intOperandField = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'intOperandField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators fields parent intOperandField copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'intOperandField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent intOperandField.

CopyDowns:
globals assemblerSystems framework generators fields parent intOperandField. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'intOperandField' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'intOperandField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent intOperandField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'intOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'fields' -> 'parent' -> 'intOperandField' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'intOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         sparcOperandFieldVariations* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         operands* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'operands' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'fields' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fCategory: floating point register field variations\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         setDoubleFloat: operandField = ( |
            | 
            operandField setMinValue: 0 MaxValue: 62 Radix: 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fCategory: floating point register field variations\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         setQuadrupleFloat: operandField = ( |
            | 
            operandField setMinValue: 0 MaxValue: 60 Radix: 4).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fCategory: floating point register field variations\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         setSingleFloat: operandField = ( |
            | 
            operandField setMinValue: 0 MaxValue: 31 Radix: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'Comment: Can only be used behind \"inBrackets\".\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         addASI = ( |
            | 
            (copy externalSuffix: externalSuffix, ' %asi') keyword: 'ASI', keyword).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         addBrackets = ( |
            | 
            addOpenBracket addCloseBracket).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         addCloseBracket = ( |
            | 
            copy externalSuffix: ']').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         addOpenBracket = ( |
            | 
            copy externalPrefix: '[').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         appendFSRIf: block = ( |
            | 
            block value
                ifTrue: [copy externalSuffix: externalSuffix, ', %fsr']
                False:  [self]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         prependFSRIf: block = ( |
            | 
            block value
                ifTrue: [copy externalPrefix: '%fsr, ', externalPrefix]
                False:  [self]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         withFrom = ( |
            | 
            withKeyword: 'From').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'Comment: Floating-point stores
reuse load dest fields, but need keyword
to be FromFloat.
From because it\'s a store,
Float to disambiguate the assembly methods for
the floating point stores from the fixed-point ones.
-- Ungar 7/02\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         withFromFloat = ( |
            | 
            withKeyword: 'FromFloat').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         withKeyword: keyword = ( |
            | 
            copy keyword: keyword capitalize, ':').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         withPlus = ( |
            | 
            copy externalSeparator: ' + ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         withTo = ( |
            | 
            withKeyword: 'To').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         withoutSeparator = ( |
            | 
            copy externalSeparator: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> () From: ( | {
         'Category: operand fields\x7fCategory: prototypes\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         symbolicOperandField = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators fields parent symbolicOperandField copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent symbolicOperandField.

CopyDowns:
globals assemblerSystems framework generators fields parent symbolicOperandField. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fields parent symbolicOperandField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         sparcOperandFieldVariations* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'sparcOperandFieldVariations' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fields' -> 'parent' -> 'symbolicOperandField' -> 'parent' -> () From: ( | {
         'Comment: SPARC external assembler accepts -1, etc.
so cannot test these, sigh -- dmu 1/02\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         unfilteredIllegalTestCasesDo: blk = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         fprs = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators registers copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fprs.

CopyDowns:
globals assemblerSystems framework generators registers. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fprs parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         maxReg = 62.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         minReg = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'registers' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         proto = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> 'proto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants parent proto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> 'proto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fprs parent proto.

CopyDowns:
globals assemblerSystems framework generators constants parent proto. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> 'proto' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators fprs parent proto parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         nameSpace = ( |
            | assemblerSystems sparc fprs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'constants' -> 'parent' -> 'proto' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'fprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         regPrefix = 'f'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         gprs = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators registers copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators gprs.

CopyDowns:
globals assemblerSystems framework generators registers. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators gprs parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         maxReg = 31.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         minReg = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         nameFor: n = ( |
            | 
            (case
                 if: [ 8 > n] Then: 'g'
                 If: [16 > n] Then: 'o'
                 If: [24 > n] Then: 'l'
                              Else: 'i'), (n % 8) asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'registers' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         proto = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants parent proto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators gprs parent proto.

CopyDowns:
globals assemblerSystems framework generators constants parent proto. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators gprs parent proto parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         nameSpace = ( |
            | assemblerSystems sparc gprs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         kleinAssemblerExternalStoreString = ( |
            | 
            '%', name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'constants' -> 'parent' -> 'proto' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         iccOperands = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators iccOperands.

CopyDowns:
globals assemblerSystems framework generators constants. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators iccOperands parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> () From: ( | {
         'Category: generating\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateAll = ( |
            | 
            start.
            generateConstantNamed: 'icc' Number: 0.
            generateConstantNamed: 'xcc' Number: 2.
            finish).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'registers' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         proto = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> 'proto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants parent proto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> 'proto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators iccOperands parent proto.

CopyDowns:
globals assemblerSystems framework generators constants parent proto. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> 'proto' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators iccOperands parent proto parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         nameSpace = ( |
            | assemblerSystems sparc iccOperands).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'iccOperands' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         instructionAssemblyMethods = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionAssemblyMethods' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators instructionAssemblyMethods copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionAssemblyMethods' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators instructionAssemblyMethods.

CopyDowns:
globals assemblerSystems framework generators instructionAssemblyMethods. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionAssemblyMethods' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionAssemblyMethods' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators instructionAssemblyMethods parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionAssemblyMethods' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'instructionAssemblyMethods' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         instructionTemplates = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators instructionTemplates copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators instructionTemplates.

CopyDowns:
globals assemblerSystems framework generators instructionTemplates. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators instructionTemplates parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         fields* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'fields' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: control transfer\x7fCategory: generation parametrized by cond codes\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         genBcc: prefix With: fieldCollector = ( |
             g.
            | 
            g:[|:condSuffix. :condCode| gen: prefix, condSuffix With: fieldCollector & condCode].

            g value: 'a'   With: 2r1000.
            g value: 'n'   With: 2r0000.
            g value: 'ne'  With: 2r1001.
            g value: 'e'   With: 2r0001.
            g value: 'g'   With: 2r1010.
            g value: 'le'  With: 2r0010.
            g value: 'ge'  With: 2r1011.
            g value: 'l'   With: 2r0011.
            g value: 'gu'  With: 2r1100.
            g value: 'leu' With: 2r0100.
            g value: 'cc'  With: 2r1101.
            g value: 'cs'  With: 2r0101.
            g value: 'pos' With: 2r1110.
            g value: 'neg' With: 2r0110.
            g value: 'vc'  With: 2r1111.
            g value: 'vs'  With: 2r0111).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: control transfer\x7fCategory: generation parametrized by cond codes\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         genBpr: prefix With: fieldCollector = ( |
             g.
            | 
            g:[|:rcondSuffix. :rcondCode| gen: prefix, rcondSuffix With: fieldCollector & rcondCode].

            g value: 'z'   With: 2r001.
            g value: 'lez' With: 2r010.
            g value: 'lz'  With: 2r011.
            g value: 'nz'  With: 2r101.
            g value: 'gz'  With: 2r110.
            g value: 'gez' With: 2r111).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: control transfer\x7fCategory: generation parametrized by cond codes\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         genFbcc: prefix With: fieldCollector = ( |
             g.
            | 
            g:[|:condSuffix. :condCode| gen: prefix, condSuffix With: fieldCollector & condCode].

            g value: 'a'   With: 2r1000.
            g value: 'n'   With: 2r0000.
            g value: 'u'   With: 2r0111.
            g value: 'g'   With: 2r0110.
            g value: 'ug'  With: 2r0101.
            g value: 'l'   With: 2r0100.
            g value: 'ul'  With: 2r0011.
            g value: 'lg'  With: 2r0010.
            g value: 'ne'  With: 2r0001.
            g value: 'e'   With: 2r1001.
            g value: 'ue'  With: 2r1010.
            g value: 'ge'  With: 2r1011.
            g value: 'uge' With: 2r1100.
            g value: 'le'  With: 2r1101.
            g value: 'ule' With: 2r1110.
            g value: 'o'   With: 2r1111).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         generateAll = ( |
            | 
            start.
            generateMemoryAccess.
            generateMemorySynchronization.
            generateIntegerArithmetic.
            generateControlTransfer.
            generateConditionalMove.
            generateRegisterWindowManagement.
            generateStateRegisterAccess.
            generatePrivilegedRegisterAccess.
            generateFloatingPointOperate.
            generateImplementationDependent.
            finish).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: conditional move\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateConditionalMove = ( |
             g.
             gFcc.
             gIcc.
            | 

            assignSubcategoryFromSender.

            g: [|:suffix. :fmovccField. :movccField. :typeBitContents. :condContents.|
                [|:fmovHead. :movHead|
                    "A.32"
                    gen: 'fmovs', suffix With: fmovHead & 2r000001 & sfrs2 withFrom & sfrd.
                    gen: 'fmovd', suffix With: fmovHead & 2r000010 & dfrs2 withFrom & dfrd.
                    gen: 'fmovq', suffix With: fmovHead & 2r000011 & qfrs2 withFrom & qfrd.
                    "A.34"
                    gen: 'mov', suffix   With: movHead & 1 & simm11 & rd.
                    gen: 'mov', suffix   With: movHead & 0 & res_10_5 & rs2 withFrom & rd.
                ] value:  "A.32" op & 2r10 & op3 & 2r110101 & bits_18_18 & 0 & cond_17_14 & condContents
                                   & fmovTypeBit & typeBitContents & fmovccField & opfLow 
                   With:  "A.34" op & 2r10 & op3 & 2r101100 & movTypeBit & typeBitContents & cond_17_14 & condContents & movccField & i
            ].
            gIcc: [|:suffix. :condContents| g value: suffix With: fmovicc With: movicc With: 1 With: condContents].
            "A.32" "A.34"
            gIcc value: 'a'   With: 2r1000.
            gIcc value: 'n'   With: 2r0000.
            gIcc value: 'ne'  With: 2r1001.
            gIcc value: 'e'   With: 2r0001.
            gIcc value: 'g'   With: 2r1010.
            gIcc value: 'le'  With: 2r0010.
            gIcc value: 'ge'  With: 2r1011.
            gIcc value: 'l'   With: 2r0011.
            gIcc value: 'gu'  With: 2r1100.
            gIcc value: 'leu' With: 2r0100.
            gIcc value: 'cc'  With: 2r1101.
            gIcc value: 'cs'  With: 2r0101.
            gIcc value: 'pos' With: 2r1110.
            gIcc value: 'neg' With: 2r0110.
            gIcc value: 'vc'  With: 2r1111.
            gIcc value: 'vs'  With: 2r0111.

            gFcc: [|:suffix. :condContents| g value: suffix With: fmovfcc With: movfcc With: 0 With: condContents].
            "A.32" "A.34"
            gFcc value: 'a'   With: 2r1000.
            gFcc value: 'n'   With: 2r0000.
            gFcc value: 'u'   With: 2r0111.
            gFcc value: 'g'   With: 2r0110.
            gFcc value: 'ug'  With: 2r0101.
            gFcc value: 'l'   With: 2r0100.
            gFcc value: 'ul'  With: 2r0011.
            gFcc value: 'lg'  With: 2r0010.
            gFcc value: 'ne'  With: 2r0001.
            gFcc value: 'e'   With: 2r1001.
            gFcc value: 'ue'  With: 2r1010.
            gFcc value: 'ge'  With: 2r1011.
            gFcc value: 'uge' With: 2r1100.
            gFcc value: 'le'  With: 2r1101.
            gFcc value: 'ule' With: 2r1110.
            gFcc value: 'o'   With: 2r1111.

            g: [|:suffix. :rcondContents| 
                [|:fmovrHead. :movrHead|
                    "A.33"
                    gen: 'fmovrs', suffix With: fmovrHead & 2r00101 & rs1 & sfrs2 & sfrd.
                    gen: 'fmovrd', suffix With: fmovrHead & 2r00110 & rs1 & dfrs2 & dfrd.
                    gen: 'fmovrq', suffix With: fmovrHead & 2r00111 & rs1 & qfrs2 & qfrd.
                    "A.35"
                    gen: 'movr', suffix   With: movrHead & 0 & res_9_5 & rs1 & rs2 & rd.
                    gen: 'movr', suffix   With: movrHead & 1 & rs1 & simm10 & rd.
                ] value: "A.33" op & 2r10 & op3 & 2r110101 & bits_13_13 & 0 & rcond_12_10 & rcondContents & opfLow
                   With: "A.35" op & 2r10 & op3 & 2r101111 & rcond_12_10 & rcondContents & i
            ].
            "A.33" "A.35"
            g value: 'e'   With: 2r001.
            g value: 'lez' With: 2r010.
            g value: 'lz'  With: 2r011.
            g value: 'ne'  With: 2r101.
            g value: 'gz'  With: 2r110.
            g value: 'gez' With: 2r111).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: control transfer\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         generateControlTransfer = ( |
             head.
            | 

            assignSubcategoryFromSender.

            deprecated: [ "A.6"
                genBcc: 'b'  With: op & 2r00 & a & bits_24_22 & 2r010 & disp22 & cond_28_25.
            ].

            genV9: [ "A.7"
                genBcc: 'b'  With: op & 2r00 & a & bits_24_22 & 2r001 & cc & p & disp19 & cond_28_25.

                "synthetic:        iprefetch(label)  =  bn_a_pt(  xcc, label)"
                "external syntax:  iprefetch label   =  bn,a,pt  %xcc, label "
                gen: 'iprefetch' With: op & 2r00
                                     & (constantFieldFor: a)  & 1
                                     & bits_24_22 & 2r001
                                     & (constantFieldFor: cc) & xcc
                                     & (constantFieldFor: p)  & 1
                                     & disp19
                                     & cond_28_25 & 2r0000.
            ].

            head: op & 2r10 & res_29_29 & op3 & 2r111010 & tcc & rs1 withPlus.
            "A.60"
            genBcc: 't' With: head & i & 0 & res_10_5 & rs2 & cond_28_25.
            genBcc: 't' With: head & i & 1 & res_10_7 & swTrapNumber & cond_28_25.

            "A.3"
            genBpr: 'br' With: op & 2r00 & a & bits_28_28 & 0 & bits_24_22 & 2r011 & p & rs1 & d16 & rcond_27_25.
            deprecated: [ "A.4"
                genFbcc: 'fb'  With: op & 2r00 & a & bits_24_22 & 2r110 & disp22 & cond_28_25.
            ].

            genV9: [ "A.5"
                genFbcc: 'fb'  With: op & 2r00 & a & bits_24_22 & 2r101 & fcc_21_20 & p & disp19 & cond_28_25.
            ].
            "A.8"
            gen: 'call'  With: op & 2r01 & disp30.

            head: op & 2r10 & op3 & 2r111110 & res_18_0 & fcnc.
            "A11"
            gen: 'done'  With: head & 0.
            gen: 'retry' With: head & 1.

            "A.22"
            gen: 'illtrap' With: op & 2r00 & res_29_25 & op2 & 2r000 & const22.

            head: op & 2r10 & op3 & 2r111000 & rs1 withTo withPlus & i.
            "A.24"
            gen: 'jmpl' With: head & 0 & res_12_5 & rs2 & rd withFrom.
            gen: 'jmpl' With: head & 1 & simm13 & rd withFrom.

            "synthetic: jmp(address)  =  jmpl(address, g0)"
            gen: 'jmp'  With: head & 0 & res_12_5 & rs2 & (constantFieldFor: rd) & g0.
            gen: 'jmp'  With: head & 1 & simm13         & (constantFieldFor: rd) & g0.

            "synthetic: call(address)  =  jmpl(address, o7)"
            gen: 'call' With: head & 0 & res_12_5 & rs2 & (constantFieldFor: rd) & o7.
            gen: 'call' With: head & 1 & simm13         & (constantFieldFor: rd) & o7.

            "synthetic:  ret  =  jmpl(i7+8, g0)"
            gen: 'ret'  With: op & 2r10 & op3 & 2r111000
                            & (constantFieldFor: rs1)    & i7
                            & i & 1
                            & (constantFieldFor: simm13) & 8
                            & (constantFieldFor: rd) & g0.

            "synthetic:  retl  =  jmpl(o7+8, g0)"
            gen: 'retl' With: op & 2r10 & op3 & 2r111000
                            & (constantFieldFor: rs1)    & o7
                            & i & 1
                            & (constantFieldFor: simm13) & 8
                            & (constantFieldFor: rd) & g0.


            head: op & 2r10 & res_29_25 & op3 & 2r111001 & rs1 withTo withPlus & i.
            "A.44"
            gen: 'return' With: head & 0 & res_12_5 & rs2.
            gen: 'return' With: head & 1 & simm13.

            "A.49"
            gen: 'sir' With: op & 2r10 & rdc & 15 & op3 & 2r110000 & bits_18_14 & 0 & i & 1 & simm13.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: floating point operate\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateFloatingPointOperate = ( |
             g.
             head.
            | 
            assignSubcategoryFromSender.

            g: [|:name. :type. :opfContents|
                gen: ('f', name, type) 
                     With: op & 2r10 & bits_29_27 & 0 & fcc_26_25 & op3 & 2r110101 &
                         ((type, 'frs1') sendTo: fields) & 
                         ((type, 'frs2') sendTo: fields) & 
                         opf & opfContents].
            "A.13"
            g value: 'cmp'  With: 's' With: 2r001010001.
            g value: 'cmp'  With: 'd' With: 2r001010010.
            g value: 'cmp'  With: 'q' With: 2r001010011.
            g value: 'cmpe' With: 's' With: 2r001010101.
            g value: 'cmpe' With: 'd' With: 2r001010110.
            g value: 'cmpe' With: 'q' With: 2r001010111.

            head: op & 2r10 & op3 & 2r110100 & opf.
            g: [|:name. :type. :opfContents|
                gen: ('f', name, type) With: head & opfContents &
                     ((type, 'frs1') sendTo: fields) & 
                     ((type, 'frs2') sendTo: fields) & 
                     ((type, 'frd') sendTo: fields)].
            "A.12"
            g value: 'add' With: 's' With: 2r001000001.
            g value: 'add' With: 'd' With: 2r001000010.
            g value: 'add' With: 'q' With: 2r001000011.
            g value: 'sub' With: 's' With: 2r001000101.
            g value: 'sub' With: 'd' With: 2r001000110.
            g value: 'sub' With: 'q' With: 2r001000111.
            "A.18"
            g value: 'mul' With: 's' With: 2r001001001.
            g value: 'mul' With: 'd' With: 2r001001010.
            g value: 'mul' With: 'q' With: 2r001001011.
            g value: 'div' With: 's' With: 2r001001101.
            g value: 'div' With: 'd' With: 2r001001110.
            g value: 'div' With: 'q' With: 2r001001111.

            gen: 'fsmuld' With: head & 2r001101001 & sfrs1 & sfrs2 & dfrd.
            gen: 'fdmulq' With: head & 2r001101110 & dfrs1 & dfrs2 & qfrd.

            head: res_18_14 & head.

            g: [|:type. :opfContents|
                gen: ('f', type, 'tox') With: head & opfContents & ((type, 'frs2') sendTo: fields) withFrom & dfrd].
            "A.14"
            g value: 's' With: 2r010000001.
            g value: 'd' With: 2r010000010.
            g value: 'q' With: 2r010000011.

            g: [|:type. :opfContents|
                gen: ('f', type, 'toi') With: head & opfContents & ((type, 'frs2') sendTo: fields) withFrom & sfrd].
            "A.14"
            g value: 's' With: 2r011010001.
            g value: 'd' With: 2r011010010.
            g value: 'q' With: 2r011010011.

            g: [|:fromType. :toType. :opfContents|
                gen: ('f', fromType, 'to', toType) With: head & opfContents &
                    ((fromType, 'frs2') sendTo: fields) &
                    ((toType, 'frd') sendTo: fields)].
            "A.15"
            g value: 's' With: 'd' With: 2r011001001.
            g value: 's' With: 'q' With: 2r011001101.
            g value: 'd' With: 's' With: 2r011000110.
            g value: 'd' With: 'q' With: 2r011001110.
            g value: 'q' With: 's' With: 2r011000111.
            g value: 'q' With: 'd' With: 2r011001011.

            g: [|:type. :opfContents|
                gen: ('fxto', type) With: head & (opfContents || 2r010000000) & dfrs2 & ((type, 'frd') sendTo: fields).
                gen: ('fito', type) With: head & (opfContents || 2r011000000) & sfrs2 & ((type, 'frd') sendTo: fields)
            ].
            "A.16"
            g value: 's' With: 2r0100.
            g value: 'd' With: 2r1000.
            g value: 'q' With: 2r1100.

            g: [|:name. :type. :opfContents|
                gen: ('f', name, type) With: head & opfContents &
                     ((type, 'frs2') sendTo: fields) & 
                     ((type, 'frd') sendTo: fields)].
            "A.17"
            g value: 'mov'  With: 's' With: 2r000000001.
            g value: 'mov'  With: 'd' With: 2r000000010.
            g value: 'mov'  With: 'q' With: 2r000000011.
            g value: 'neg'  With: 's' With: 2r000000101.
            g value: 'neg'  With: 'd' With: 2r000000110.
            g value: 'neg'  With: 'q' With: 2r000000111.
            g value: 'abs'  With: 's' With: 2r000001001.
            g value: 'abs'  With: 'd' With: 2r000001010.
            g value: 'abs'  With: 'q' With: 2r000001011.\
            "A.19"
            g value: 'sqrt' With: 's' With: 2r000101001.
            g value: 'sqrt' With: 'd' With: 2r000101010.
            g value: 'sqrt' With: 'q' With: 2r000101011).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: implementation dependent\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateImplementationDependent = ( |
             head.
            | 
            assignSubcategoryFromSender.

            head: op & 2r10 & op3.
            "A.23"
            gen: 'impdep1' With: head & 2r110110.
            gen: 'impdep2' With: head & 2r110111).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: integer arithmetic\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         generateIntegerArithmetic = ( |
             fieldCollector0.
             fieldCollector1.
             g.
             head.
            | 

            assignSubcategoryFromSender.

            head: op & 2r10 & rs1.

            g: [|:name. :op3Contents|
                gen: name With: head & i & 0 & res_12_5 & rs2 & rd & op3 & op3Contents.
                gen: name With: head & i & 1 & simm13 & rd & op3 & op3Contents.
               ].
            "A.2"
                g value: 'add'      With: 2r000000.
                g value: 'addc'     With: 2r001000.
                g value: 'addcc'    With: 2r010000.
                g value: 'addccc'   With: 2r011000.
            deprecated: [ "A.10"
                g value: 'udiv'     With: 2r001110.
                g value: 'sdiv'     With: 2r001111.
                g value: 'udivcc'   With: 2r011110.
                g value: 'sdivcc'   With: 2r011111.
            ].
            "A.31"
                g value: 'and'      With: 2r000001.
                g value: 'andcc'    With: 2r010001.
                g value: 'andn'     With: 2r000101.
                g value: 'andncc'   With: 2r010101.
                g value: 'or'       With: 2r000010.

                "synthetic: clr(rd)  =  or(g0, g0, rd)"
                gen: 'clr' With: op & 2r10 & (constantFieldFor: rs1) & g0 & i & 0 & res_12_5 & (constantFieldFor: rs2) & g0 & rd & op3 & 2r000010.

                "synthetic: mov(reg_or_imm, rd)  =  or(g0, reg_or_imm, rd)"
                gen: 'mov' With: op & 2r10 & (constantFieldFor: rs1) & g0 & i & 0 & res_12_5 & rs2 & rd & op3 & 2r000010.
                gen: 'mov' With: op & 2r10 & (constantFieldFor: rs1) & g0 & i & 1 & simm13         & rd & op3 & 2r000010.

                g value: 'orcc'     With: 2r010010.

                "synthetic: tst(reg)  =  orcc(g0, reg, g0)"
                gen: 'tst' With: op & 2r10 & (constantFieldFor: rs1) & g0 & i & 0 & res_12_5 & rs2 & (constantFieldFor: rd) & g0 & op3 & 2r010010.

                g value: 'orn'      With: 2r000110.
                g value: 'orncc'    With: 2r010110.
                g value: 'xor'      With: 2r000011.
                g value: 'xorcc'    With: 2r010011.
                g value: 'xnor'     With: 2r000111.

                "synthetic: not(rs1, rd)  =  xnor(rs1, g0, rd)"
                gen: 'not' With: op & 2r10 & rs1 & i & 0 & res_12_5 & (constantFieldFor: rs2) & g0 & rd & op3 & 2r000111.

                g value: 'xnorcc'   With: 2r010111.
            genV9: [ "A.36"
                g value: 'mulx'     With: 2r001001.
                g value: 'sdivx'    With: 2r101101.
                g value: 'udivx'    With: 2r001101.
            ].
            deprecated: [ "A.37"
                g value: 'umul'     With: 2r001010.
                g value: 'smul'     With: 2r001011.
                g value: 'umulcc'   With: 2r011010.
                g value: 'smulcc'   With: 2r011011.
            ].
            deprecated: [ "A.38"
                g value: 'mulscc'   With: 2r100100.
            ].
            "A.55"
                g value: 'sub'      With: 2r000100.

                "synthetic: neg(rs2, rd)  =  sub(g0, rs2, rd)"
                gen: 'neg' With: op & 2r10 & (constantFieldFor: rs1) & g0 & i & 0 & res_12_5 & rs2 & rd & op3 & 2r000100.

                g value: 'subcc'    With: 2r010100.

                "synthetic: cmp(rs1, reg_or_imm)  =  subcc(rs1, reg_or_imm, g0)"
                gen: 'cmp' With: op & 2r10 & rs1 & i & 0 & res_12_5 & rs2 & (constantFieldFor: rd) & g0 & op3 & 2r010100.
                gen: 'cmp' With: op & 2r10 & rs1 & i & 1 & simm13         & (constantFieldFor: rd) & g0 & op3 & 2r010100.

                g value: 'subc'     With: 2r001100.
                g value: 'subccc'   With: 2r011100.
            "A.58"
                g value: 'taddcc'   With: 2r100000.
            deprecated: [
                g value: 'taddcctv' With: 2r100010.
            ].
            "A.59"
                g value: 'tsubcc'   With: 2r100001.
            deprecated: [
                g value: 'tsubcctv' With: 2r100011.
            ].

            head: op & 2r10 & res_18_14.
            "A.40"
                g value: 'popc'   With: 2r101110.

            "A.47"
            gen: 'sethi' With: op & 2r00 & op2 & 2r100 & imm22 & rd.

            "A.39"
            gen: 'nop'   With: op & 2r00 & op2 & 2r100 & (constantFieldFor: imm22) & 2r00
                                                       & (constantFieldFor: rd)    & 2r00.

            head: op & 2r10 & rs1 & op3.
            g: [|:name. :op3Contents|
                gen: name      With: head & op3Contents & i & 0 & x & 0 & res_11_5 & rs2 & rd.
                gen: name, 'x' With: head & op3Contents & i & 0 & x & 1 & res_11_5 & rs2 & rd.
                gen: name      With: head & op3Contents & i & 1 & x & 0 & res_11_5 & shcnt32 & rd.
                gen: name, 'x' With: head & op3Contents & i & 1 & x & 1 & res_11_6 & shcnt64 & rd.
            ].
            "A.48"
            g value: 'sll' With: 2r100101.
            g value: 'srl' With: 2r100110.

            "synthetic: clruw(rs1, rd)  =  srl(rs1, g0, rd)"
            gen: 'clruw'      With: head & 2r100110 & i & 0 & x & 0 & res_11_5 & (constantFieldFor: rs2) & g0 & rd.

            g value: 'sra' With: 2r100111.

            "synthetic: signx(rs1, rd)  =  sra(rs1, g0, rd)"
            gen: 'signx'      With: head & 2r100111 & i & 0 & x & 0 & res_11_5 & (constantFieldFor: rs2) & g0 & rd).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: memory access\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         generateMemoryAccess = ( |
             asiTail.
             asi_p.
             asi_p_l.
             casaHead.
             casxaHead.
             fsrTag.
             g.
             head.
             immTail.
            | 

            assignSubcategoryFromSender.

            casaHead:  op & 2r11 & op3 & 2r111100.
            casxaHead: op & 2r11 & op3 & 2r111110.
            immTail: i & 0 & rs1 addBrackets withoutSeparator & immAsi & rs2 & rd.
            asiTail: i & 1 & rs1 addBrackets addASI & res_12_5 & rs2 & rd.
            "A.9"
            gen: 'casa'  With: casaHead  & immTail.
            gen: 'casa'  With: casaHead  & asiTail.
            gen: 'casxa' With: casxaHead & immTail.
            gen: 'casxa' With: casxaHead & asiTail.

            asi_p:   16r80.
            asi_p_l: 16r88.

            "synthetic: cas  (rs1, rs2, rd) = casa (rs1, asi_p,   rs2, rd), cas   [rs1], rs2, rd = casa  [rs1]asi_p  , rs2, rd"
            "synthetic: casl (rs1, rs2, rd) = casa (rs1, asi_p_l, rs2, rd), casl  [rs1], rs2, rd = casa  [rs1]asi_p_l, rs2, rd"
            "synthetic: casx (rs1, rs2, rd) = casxa(rs1, asi_p,   rs2, rd), casx  [rs1], rs2, rd = casxa [rs1]asi_p  , rs2, rd"
            "synthetic: casxl(rs1, rs2, rd) = casxa(rs1, asi_p_l, rs2, rd), casxl [rs1], rs2, rd = casxa [rs1]asi_p_l, rs2, rd"

            gen: 'cas'   With: casaHead  & i & 0 & rs1 addBrackets & (constantFieldFor: immAsi) & asi_p   & rs2 & rd.
            gen: 'casl'  With: casaHead  & i & 0 & rs1 addBrackets & (constantFieldFor: immAsi) & asi_p_l & rs2 & rd.
            gen: 'casx'  With: casxaHead & i & 0 & rs1 addBrackets & (constantFieldFor: immAsi) & asi_p   & rs2 & rd.
            gen: 'casxl' With: casxaHead & i & 0 & rs1 addBrackets & (constantFieldFor: immAsi) & asi_p_l & rs2 & rd.

            head: op & 2r10 & res_29_25 & op3 & 2r111011 & rs1 withPlus.
            "A.20"
            gen: 'flush' With: head & i & 0 & res_12_5 & rs2.
            gen: 'flush' With: head & i & 1 & simm13.

            head: op & 2r11 & rs1 addOpenBracket withPlus & op3.
            fsrTag: 2r100001.

            g: [|:name. :resultReg. :op3Contents. :evenOnly |
                gen: name With: head & op3Contents & i & 0 & res_12_5 & (rs2 addCloseBracket appendFSRIf: [op3Contents = fsrTag]) & resultReg
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]]) 
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g0 & g0 & g1) asVector] False: vector.

                gen: name With: head & op3Contents & i & 1 & (simm13 addCloseBracket appendFSRIf: [op3Contents = fsrTag]) & resultReg
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]]) 
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g0 & 0 & g1) asVector] False: vector.
               ].
            "A.25"
                g value: 'ld'     With: sfrd    With: 2r100000  With: false.
                g value: 'ldd'    With: dfrd    With: 2r100011  With: false.
                g value: 'ldq'    With: qfrd    With: 2r100010  With: false.
                g value: 'ldx'    With: rdc & 1 With: fsrTag    With: false.   "ldxfsr"
            deprecated: [
                g value: 'ld'     With: rdc & 0 With: fsrTag    With: false.   "ldfsr"
            ].
            deprecated: [ "A.56"
                g value: 'swap'   With: rd      With: 2r001111  With: false.
            ].

            "A.27"
                g value: 'ldsb'   With: rd With: 2r001001  With: false.
                g value: 'ldsh'   With: rd With: 2r001010  With: false.
                g value: 'ldsw'   With: rd With: 2r001000  With: false.
                g value: 'ldub'   With: rd With: 2r000001  With: false.
                g value: 'lduh'   With: rd With: 2r000010  With: false.
                g value: 'lduw'   With: rd With: 2r000000  With: false.
                g value: 'ldx'    With: rd With: 2r001011  With: false.

            deprecated: [
                g value: 'ldd'    With: rd With: 2r000011  With: true.
            ].

            "A.29"
                g value: 'ldstub' With: rd With: 2r001101  With: false.

            head: op & 2r11 & rs1 addOpenBracket withPlus & op3.

            g: [|:name. :resultReg. :op3Contents. :evenOnly. exemplars <- vector |
                gen: name With: head & op3Contents & i & 0 & rs2 addCloseBracket withoutSeparator & immAsi & resultReg
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]])
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g0 & g0 & 0 & g1) asVector] False: vector.

                gen: name With: head & op3Contents & i & 1 & simm13 addCloseBracket addASI & resultReg
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]])
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g0 & 0 & g1) asVector] False: vector.
               ].
            "A.26"
                g value: 'lda'     With: sfrd With: 2r110000  With: false.
                g value: 'ldda'    With: dfrd With: 2r110011  With: false.
                g value: 'ldqa'    With: qfrd With: 2r110010  With: false.
            "A.28"
                g value: 'ldsba'   With: rd   With: 2r011001  With: false.
                g value: 'ldsha'   With: rd   With: 2r011010  With: false.
                g value: 'ldswa'   With: rd   With: 2r011000  With: false.
                g value: 'lduba'   With: rd   With: 2r010001  With: false.
                g value: 'lduha'   With: rd   With: 2r010010  With: false.
                g value: 'lduwa'   With: rd   With: 2r010000  With: false.
                g value: 'ldxa'    With: rd   With: 2r011011  With: false.

            deprecated: [
                g value: 'ldda'    With: rd   With: 2r010011  With: true.
            ].

            "A.30"
                g value: 'ldstuba' With: rd   With: 2r011101  With: false.

            "A.41"
            gen: 'prefetch'     With: op & 2r11 & op3 & 2r101101 & rs1 addOpenBracket withPlus
                                         & i & 0 & res_12_5 & rs2 addCloseBracket & fcn.

            gen: 'prefetch'     With: op & 2r11 & op3 & 2r101101 & rs1 addOpenBracket withPlus 
                                         & i & 1 & simm13 addCloseBracket & fcn.

            gen: 'prefetcha'    With: op & 2r11 & op3 & 2r111101 & rs1 addOpenBracket withPlus
                                         & i & 0 & rs2 addCloseBracket withoutSeparator & immAsi & fcn.

            gen: 'prefetcha'    With: op & 2r11 & op3 & 2r111101 & rs1 addOpenBracket withPlus
                                         & i & 1 & simm13 addCloseBracket addASI & fcn.

            head: op & 2r11 & op3.
            fsrTag: 2r100101.

            g: [|:name. :fromReg. :op3Contents. :evenOnly |
                gen: name With: head & op3Contents & fromReg & (rs1 addOpenBracket withPlus prependFSRIf: [op3Contents = fsrTag])
                                     & i & 0 & res_12_5 & rs2 addCloseBracket
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]])
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g1 & g0 & g0) asVector] False: vector.

                gen: name With: head & op3Contents & fromReg & (rs1 addOpenBracket withPlus prependFSRIf: [op3Contents = fsrTag])
                                     & i & 1 & simm13 addCloseBracket
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]])
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g1 & g0 & 0) asVector] False: vector.
               ].
            "A.51"
                g value: 'st'     With: sfrd withFromFloat   With: 2r100100  With: false.
                g value: 'std'    With: dfrd withFromFloat   With: 2r100111  With: false.
                g value: 'stq'    With: qfrd withFromFloat   With: 2r100110  With: false.
                g value: 'stx'    With:   rdc & 1            With: fsrTag    With: false.    "stxfsr"
            deprecated: [
                g value: 'st'     With:   rdc & 0       With: fsrTag    With: false.    "stfsr"
            ].
            "A.53"
                g value: 'stb'    With:   rd withFrom   With: 2r000101  With: false.
                g value: 'sth'    With:   rd withFrom   With: 2r000110  With: false.
                g value: 'stw'    With:   rd withFrom   With: 2r000100  With: false.
                g value: 'stx'    With:   rd withFrom   With: 2r001110  With: false.

                "synthetic: clrb(address)  = stb(g0, address)"
                "synthetic: clrh(address)  = sth(g0, address)"
                "synthetic: clr (address)  = stw(g0, address)"
                "synthetic: clrx(address)  = stx(g0, address)"

                gen: 'clrb' With: head & 2r000101 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 0 & res_12_5 & rs2 addCloseBracket.
                gen: 'clrb' With: head & 2r000101 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 1 & simm13         addCloseBracket.
                gen: 'clrh' With: head & 2r000110 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 0 & res_12_5 & rs2 addCloseBracket.
                gen: 'clrh' With: head & 2r000110 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 1 & simm13         addCloseBracket.
                gen: 'clr'  With: head & 2r000100 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 0 & res_12_5 & rs2 addCloseBracket.
                gen: 'clr'  With: head & 2r000100 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 1 & simm13         addCloseBracket.
                gen: 'clrx' With: head & 2r001110 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 0 & res_12_5 & rs2 addCloseBracket.
                gen: 'clrx' With: head & 2r001110 & (constantFieldFor: rd) & g0 & rs1 addOpenBracket withPlus & i & 1 & simm13         addCloseBracket.


            deprecated: [
                g value: 'std'    With:   rd withFrom   With: 2r000111  With: true.
            ].


            head: op & 2r11 & op3.

            g: [|:name. :fromReg. :op3Contents. :evenOnly |
                gen: name With: head & op3Contents & fromReg & rs1 addOpenBracket withPlus
                                     & i & 0 & rs2 addCloseBracket withoutSeparator & immAsi
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]])
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g1 & g0 & g0 & 0) asVector] False: vector.

                gen: name With: head & op3Contents & fromReg & rs1 addOpenBracket withPlus
                                     & i & 1 & simm13 addCloseBracket addASI
                          Pred: (evenOnly ifTrue: [[rdArg value even]] False: [[true]])
                          Bads:  evenOnly ifTrue: [vector copyAddFirst: (g1 & g0 & 0) asVector] False: vector.
               ].
            "A.52"
                g value: 'sta'   With: sfrd withFromFloat   With: 2r110100 With: false.
                g value: 'stda'  With: dfrd withFromFloat   With: 2r110111 With: false.
                g value: 'stqa'  With: qfrd withFromFloat   With: 2r110110 With: false.
            "A.54"
                g value: 'stba'  With:   rd withFrom   With: 2r010101 With: false.
                g value: 'stha'  With:   rd withFrom   With: 2r010110 With: false.
                g value: 'stwa'  With:   rd withFrom   With: 2r010100 With: false.
                g value: 'stxa'  With:   rd withFrom   With: 2r011110 With: false.

            deprecated: [
                g value: 'stda'  With:   rd withFrom   With: 2r010111 With: true.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: memory synchronization\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         generateMemorySynchronization = ( |
            | 
            assignSubcategoryFromSender.

            "A.31"
            gen: 'membar' With: op & 2r10 & res_29_25 & op3 & 2r101000 & bits_18_14 & 2r01111 & i & 1 & res_12_7 & membarMask.

            deprecated: [ "A.50"
                gen: 'stbar' With: op & 2r10 & res_29_25 & op3 & 2r101000 & bits_18_14 & 2r01111 & i & 0 & res_12_0.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: privileged register access\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generatePrivilegedRegisterAccess = ( |
             head.
            | 

            assignSubcategoryFromSender.

            "A.42"
            gen: 'rdpr' With: op & 2r10 & op3 & 2r101010 & res_13_0 & privReg & rd.

            head: op & 2r10 & op3 & 2r110010 & rs1 & i.
            "A.61"
            gen: 'wrpr' With: head & 0 & res_12_5 & rs2 & rdPrivReg.
            gen: 'wrpr' With: head & 1 & simm13 & rdPrivReg).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: register window management\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateRegisterWindowManagement = ( |
             g.
             head.
            | 

            assignSubcategoryFromSender.

            "A.21"
            gen: 'flushw' With: op & 2r10 & res_29_25 & op3 & 2r101011 & res_18_14 & i & 0 & res_12_0.

            head: op & 2r10 & rs1 & op3.
            g: [|:name. :op3Contents|
                gen: name With: head & op3Contents & i & 0 & res_12_5 & rs2 & rd.
                gen: name With: head & op3Contents & i & 1 & simm13 & rd.
            ].
            "A.45"
            g value: 'save'    With: 2r111100.
            g value: 'restore' With: 2r111101.

            "synthetic:  save  =  save(g0, g0, g0)"
            "synthetic:  save  =  save(g0, g0, g0)"
            gen: 'save'    With: op & 2r10
                               & (constantFieldFor: rs1) & g0
                               & op3 & 2r111100 & i & 0 & res_12_5
                               & (constantFieldFor: rs2) & g0
                               & (constantFieldFor: rd)  & g0.
            gen: 'restore' With: op & 2r10
                               & (constantFieldFor: rs1) & g0
                               & op3 & 2r111101 & i & 0 & res_12_5
                               & (constantFieldFor: rs2) & g0
                               & (constantFieldFor: rd)  & g0.

            "A.46"
            gen: 'saved'    With: op & 2r10 & fcnc & 0 & op3 & 2r110001 & res_18_0.
            gen: 'restored' With: op & 2r10 & fcnc & 1 & op3 & 2r110001 & res_18_0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: state register access\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateStateRegisterAccess = ( |
             g.
             head.
            | 

            assignSubcategoryFromSender.

            head: op & 2r10 & rd & op3 & 2r101000 & i & 0 & res_12_0 & rs1c.
            "A.43"
            deprecated: [
                gen: 'rdy'    With: head & 0.
            ].
                gen: 'rdccr'  With: head & 2.
                gen: 'rdasi'  With: head & 3.
                gen: 'rdtick' With: head & 4.
                gen: 'rdpc'   With: head & 5.
                gen: 'rdfprs' With: head & 6.

            head: op & 2r10 & op3 & 2r110000 & rs1 & rdc.
            g: [|:name. :rdContents|
                gen: name With: head & rdContents & i & 0 & res_12_5 & rs2.
                gen: name With: head & rdContents & i & 1 & simm13.
            ].
            "A.62"
            deprecated: [
                g value: 'wry'    With: 0.
            ].

                g value: 'wrccr'  With: 2.
                g value: 'wrasi'  With: 3.
                g value: 'wrfprs' With: 6).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         gprs* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'gprs' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         iccOperands* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'iccOperands' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'instructionTemplates' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'Category: customize for SPARC\x7fModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         proto = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'proto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators instructionTemplates parent proto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'proto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators instructionTemplates parent proto.

CopyDowns:
globals assemblerSystems framework generators instructionTemplates parent proto. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         architecture = 'sparc'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'proto' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators instructionTemplates parent proto parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'proto' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         sparcMixins* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'sparcMixins' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators instructionTemplates parent sparcMixins.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'sparcMixins' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         genV9: blk = ( |
            | 
            generatingV9Instructions ifTrue: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'instructionTemplates' -> 'parent' -> 'sparcMixins' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         generatingV9Instructions = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         membarOperands = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'membarOperands' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'membarOperands' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators membarOperands.

CopyDowns:
globals assemblerSystems framework generators constants. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'membarOperands' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'membarOperands' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators membarOperands parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'membarOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateAll = ( |
            | 
            start.
            generateConstantNamed: 'loadLoad'   Number: 2r0000001.
            generateConstantNamed: 'storeLoad'  Number: 2r0000010.
            generateConstantNamed: 'loadStore'  Number: 2r0000100.
            generateConstantNamed: 'storeStore' Number: 2r0001000.
            generateConstantNamed: 'lookaside'  Number: 2r0010000.
            generateConstantNamed: 'memIssue'   Number: 2r0100000.
            generateConstantNamed: 'sync'       Number: 2r1000000.
            finish).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'membarOperands' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'constants' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         privilegedRegisters = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators privilegedRegisters.

CopyDowns:
globals assemblerSystems framework generators constants. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators privilegedRegisters parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateAll = ( |
            | 
            start.
            "read and write registers:"
            generateConstantNamed: 'tpc'        Number:  0.
            generateConstantNamed: 'tnpc'       Number:  1.
            generateConstantNamed: 'tstate'     Number:  2.
            generateConstantNamed: 'tt'         Number:  3.
            generateConstantNamed: 'tick'       Number:  4.
            generateConstantNamed: 'tba'        Number:  5.
            generateConstantNamed: 'pstate'     Number:  6.
            generateConstantNamed: 'tl'         Number:  7.
            generateConstantNamed: 'pil'        Number:  8.
            generateConstantNamed: 'cwp'        Number:  9.
            generateConstantNamed: 'cansave'    Number: 10.
            generateConstantNamed: 'canrestore' Number: 11.
            generateConstantNamed: 'cleanwin'   Number: 12.
            generateConstantNamed: 'otherwin'   Number: 13.
            generateConstantNamed: 'wstate'     Number: 14.

            "read only registers:"
            generateConstantNamed: 'fq'         Number: 15.
            generateConstantNamed: 'ver'        Number: 31.
            finish).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'registers' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         proto = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> 'proto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators constants parent proto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> 'proto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators privilegedRegisters parent proto.

CopyDowns:
globals assemblerSystems framework generators constants parent proto. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> 'proto' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators privilegedRegisters parent proto parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         nameSpace = ( |
            | assemblerSystems sparc privilegedRegisters).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'privilegedRegisters' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'gprs' -> 'parent' -> 'proto' -> 'parent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         pseudoInstructionTemplates = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators pseudoInstructionTemplates copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators pseudoInstructionTemplates.

CopyDowns:
globals assemblerSystems framework generators pseudoInstructionTemplates. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators pseudoInstructionTemplates parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         fields* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'fields' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         generateAll = ( |
            | 
            start.

            gen: 'signx' Field:           rd  Script: 'signx', rs1 keyword, ' rdArg ',                                 rd keyword, ' rdArg'.
            gen: 'not'   Field:           rd  Script: 'not'  , rs1 keyword, ' rdArg ',                                 rd keyword, ' rdArg'.
            gen: 'neg'   Field:           rd  Script: 'neg'  ,                          rs2    keyword, ' rdArg ',     rd keyword, ' rdArg'.

            gen: 'inc'   Field:           rd  Script: 'add'  , rs1 keyword, ' rdArg ',  simm13 keyword,         ' 1 ', rd keyword, ' rdArg'.
            gen: 'inc'   Fields: simm13 & rd  Script: 'add'  , rs1 keyword, ' rdArg ',  simm13 keyword, ' simm13Arg ', rd keyword, ' rdArg'.
            gen: 'inccc' Field:           rd  Script: 'addcc', rs1 keyword, ' rdArg ',  simm13 keyword,         ' 1 ', rd keyword, ' rdArg'.
            gen: 'inccc' Fields: simm13 & rd  Script: 'addcc', rs1 keyword, ' rdArg ',  simm13 keyword, ' simm13Arg ', rd keyword, ' rdArg'.
            gen: 'dec'   Field:           rd  Script: 'sub'  , rs1 keyword, ' rdArg ',  simm13 keyword,         ' 1 ', rd keyword, ' rdArg'.
            gen: 'dec'   Fields: simm13 & rd  Script: 'sub'  , rs1 keyword, ' rdArg ',  simm13 keyword, ' simm13Arg ', rd keyword, ' rdArg'.
            gen: 'deccc' Field:           rd  Script: 'subcc', rs1 keyword, ' rdArg ',  simm13 keyword,         ' 1 ', rd keyword, ' rdArg'.
            gen: 'deccc' Fields: simm13 & rd  Script: 'subcc', rs1 keyword, ' rdArg ',  simm13 keyword, ' simm13Arg ', rd keyword, ' rdArg'.

            gen: 'btst'  Fields: rs2    & rs1 Script: 'andcc', rs1 keyword, ' rs1Arg ', rs2    keyword, ' rs2Arg '   , rd keyword, ' g0'   .
            gen: 'btst'  Fields: simm13 & rs1 Script: 'andcc', rs1 keyword, ' rs1Arg ', simm13 keyword, ' simm13Arg ', rd keyword, ' g0'   .
            gen: 'bset'  Fields: rs2    & rd  Script: 'or'   , rs1 keyword, ' rdArg  ', rs2    keyword, ' rs2Arg '   , rd keyword, ' rdArg'.
            gen: 'bset'  Fields: simm13 & rd  Script: 'or'   , rs1 keyword, ' rdArg  ', simm13 keyword, ' simm13Arg ', rd keyword, ' rdArg'.
            gen: 'bclr'  Fields: rs2    & rd  Script: 'andn' , rs1 keyword, ' rdArg  ', rs2    keyword, ' rs2Arg '   , rd keyword, ' rdArg'.
            gen: 'bclr'  Fields: simm13 & rd  Script: 'andn' , rs1 keyword, ' rdArg  ', simm13 keyword, ' simm13Arg ', rd keyword, ' rdArg'.
            gen: 'btog'  Fields: rs2    & rd  Script: 'xor'  , rs1 keyword, ' rdArg  ', rs2    keyword, ' rs2Arg '   , rd keyword, ' rdArg'.
            gen: 'btog'  Fields: simm13 & rd  Script: 'xor'  , rs1 keyword, ' rdArg  ', simm13 keyword, ' simm13Arg ', rd keyword, ' rdArg'.

            gen: 'clruw' Field:           rd  Script: 'clruw', rs1 keyword, ' rdArg ',                                 rd keyword, ' rdArg'.

            finish).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         proto = bootstrap define: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> 'proto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals assemblerSystems framework generators pseudoInstructionTemplates parent proto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> 'proto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators pseudoInstructionTemplates parent proto.

CopyDowns:
globals assemblerSystems framework generators pseudoInstructionTemplates parent proto. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> 'proto' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> 'proto' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals assemblerSystems sparc generators pseudoInstructionTemplates parent proto parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         architecture = 'sparc'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'sparc' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> 'proto' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'assemblerSystems' -> 'framework' -> 'generators' -> 'pseudoInstructionTemplates' -> 'parent' -> 'proto' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         asmSPARCGens = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules asmSPARCGens.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/asmKit/asmSPARC'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.15 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'asmSPARCGens' -> () From: ( | {
         'ModuleInfo: Module: asmSPARCGens InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules asmSPARCGens postFileIn
