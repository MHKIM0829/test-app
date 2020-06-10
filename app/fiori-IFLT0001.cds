/*
  Common Annotations shared by all apps
*/

using { test.db as db } from '../db/schema';

/*
  /IAPPS/IFL IFLT0001 List
*/

annotate db.IFLT0001 with @(
    Common.SemanticKey: [ FLOWCODE, FLOWNO, FLOWCNT ],
    UI: {
        Identification: [{Value:FLOWCODE}],
        SelectionFields: [ FLOWCODE, FLOWNO, FLOWCNT ],
        LineItem: [
            {Value: FLOWCODE},
            {Value: FLOWNO},
            {Value: FLOWCNT},
            {Value: BUKRS},
        ]
	}
);

/*
  /IAPPS/IFL IFLT0001 Elements
*/

annotate db.IFLT0001 with {
	FLOWCODE @title:'{i18n>FLOWCODE}';
	FLOWNO @title:'{i18n>FLOWNO}';
	FLOWCNT  @title:'{i18n>FLOWCNT}';
  BUKRS  @title:'{i18n>BUKRS}';
};