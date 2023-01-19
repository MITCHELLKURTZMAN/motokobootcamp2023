export const idlFactory = ({ IDL }) => {
  const List__1 = IDL.Rec();
  List__1.fill(IDL.Opt(IDL.Tuple(IDL.Nat, List__1)));
  const List = IDL.Opt(IDL.Tuple(IDL.Nat, List__1));
  return IDL.Service({
    'add_username' : IDL.Func([IDL.Text], [], []),
    'get_usernames' : IDL.Func(
        [],
        [IDL.Vec(IDL.Tuple(IDL.Principal, IDL.Text))],
        ['query'],
      ),
    'is_anonymous' : IDL.Func([], [IDL.Bool], []),
    'testReverse' : IDL.Func([], [List], []),
    'test_find_in_buffer' : IDL.Func([], [IDL.Nat], []),
  });
};
export const init = ({ IDL }) => { return []; };
