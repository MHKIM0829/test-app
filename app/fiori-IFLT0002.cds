/*
  Common Annotations shared by all apps
*/

using { test.db as db } from '../db/schema';


/*
  /IAPPS/IFL IFLT0002 List
*/

annotate db.IFLT0002 with @(
    Common.SemanticKey: [ FLOWCODE, FLOWNO, FLOWCNT, FLOWIT ],
    UI: {
        Identification: [{Value:FLOWCODE}],
        SelectionFields: [ FLOWCODE, FLOWNO, FLOWCNT, FLOWIT ],
        LineItem: [
            {Value: FLOWCODE},
            {Value: FLOWNO},
            {Value: FLOWCNT},
            {Value: FLOWIT},
            {Value: WFIT_TYPE},
        ]
	}
);

/*
  /IAPPS/IFL IFLT0002 Elements
*/

annotate db.IFLT0002 with {
	FLOWCODE @title:'{i18n>FLOWCODE}';
  FLOWNO @title:'{i18n>FLOWNO}';
  FLOWCNT @title:'{i18n>FLOWCNT}';
  FLOWIT @title:'{i18n>FLOWIT}';
  WFIT_TYPE @title:'{i18n>WFIT_TYPE}';
};