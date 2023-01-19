export const idlFactory = ({ IDL }) => {
  const BookType = IDL.Record({ 'title' : IDL.Text, 'pages' : IDL.Nat });
  return IDL.Service({
    'add_book' : IDL.Func([BookType], [], []),
    'testDrop' : IDL.Func([], [IDL.Vec(IDL.Nat)], []),
    'testRemove_even' : IDL.Func([], [IDL.Vec(IDL.Nat)], []),
    'testSecond_maximum' : IDL.Func([], [IDL.Int], []),
  });
};
export const init = ({ IDL }) => { return []; };
