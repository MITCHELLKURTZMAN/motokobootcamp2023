import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export type List = [] | [[bigint, List__1]];
export type List__1 = [] | [[bigint, List__1]];
export interface _SERVICE {
  'add_username' : ActorMethod<[string], undefined>,
  'get_usernames' : ActorMethod<[], Array<[Principal, string]>>,
  'is_anonymous' : ActorMethod<[], boolean>,
  'testReverse' : ActorMethod<[], List>,
  'test_find_in_buffer' : ActorMethod<[], bigint>,
}
