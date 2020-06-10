using { test.db as db } from '../db/schema';

service MyService1 @(path:'/IFL1') {
    entity IFLT0001 as projection on db.IFLT0001;
    entity IFLT0002 as projection on db.IFLT0002;
}