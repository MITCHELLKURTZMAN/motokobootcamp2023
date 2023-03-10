export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'average_array' : IDL.Func([IDL.Vec(IDL.Int)], [IDL.Int], ['query']),
    'convert_to_binary' : IDL.Func([IDL.Nat], [IDL.Text], []),
    'count_character' : IDL.Func([IDL.Text, IDL.Nat32], [IDL.Text], ['query']),
    'factorial' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
    'find_duplicates' : IDL.Func(
        [IDL.Vec(IDL.Nat)],
        [IDL.Vec(IDL.Nat)],
        ['query'],
      ),
    'getChar' : IDL.Func([], [IDL.Nat32], ['query']),
    'number_of_words' : IDL.Func([IDL.Text], [IDL.Nat], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
