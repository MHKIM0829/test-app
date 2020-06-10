using {Currency, managed, sap} from '@sap/cds/common';
namespace test.db;

@Catalog.tableType : #COLUMN
entity IFLT0001 {
    key FLOWCODE : String;
    key FLOWNO : String;
    key FLOWCNT : String;
    BUKRS : String;
    DETAIL : Composition of many IFLT0002 on DETAIL.FLOWCODE = FLOWCODE 
                                            and DETAIL.FLOWNO = FLOWNO 
                                            and DETAIL.FLOWCNT = FLOWCNT;
}

@Catalog.tableType : #COLUMN
entity IFLT0002 {
    key FLOWCODE : String;
    key FLOWNO : String;
    key FLOWCNT : String;
    key FLOWIT : String;
    WFIT_TYPE : String;
}