import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface BookType { 'title' : string, 'pages' : bigint }
export interface _SERVICE {
  'add_book' : ActorMethod<[BookType], undefined>,
  'testDrop' : ActorMethod<[], Array<bigint>>,
  'testRemove_even' : ActorMethod<[], Array<bigint>>,
  'testSecond_maximum' : ActorMethod<[], bigint>,
}
