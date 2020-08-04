create or replace package hamming#
is
  --+--------------------------------------------------------------------------+
  -- Computes the Hamming distance between two starnds.
  --
  -- @param i_first  sequence to compare
  -- @param i_second sequence to compare
  --
  -- @return         Hamming distance between i_first and i_second
  --+--------------------------------------------------------------------------+
  function distance (
    i_first                                       varchar2
   ,i_second                                      varchar2
  ) return pls_integer;

end hamming#;
/

create or replace package body hamming#
is
  function distance(
    i_first                                       varchar2
   ,i_second                                      varchar2
    )  return pls_integer  as
    result integer := 0;
  begin
    FOR i IN 1..length(i_first) LOOP
        if (substr(i_first, i, 1) != substr(i_second, i, 1)) then
            result = result + 1;
        end if;
    END loop;
    return result;
  end distance;
end hamming#;
/
