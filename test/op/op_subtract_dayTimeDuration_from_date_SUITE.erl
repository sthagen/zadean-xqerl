-module('op_subtract_dayTimeDuration_from_date_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

-export(['op-subtract-dayTimeDuration-from-date2args-1'/1]).
-export(['op-subtract-dayTimeDuration-from-date2args-2'/1]).
-export(['op-subtract-dayTimeDuration-from-date2args-3'/1]).
-export(['op-subtract-dayTimeDuration-from-date2args-4'/1]).
-export(['op-subtract-dayTimeDuration-from-date2args-5'/1]).
-export(['op-subtract-dayTimeDuration-from-date-1'/1]).
-export(['op-subtract-dayTimeDuration-from-date-2'/1]).
-export(['op-subtract-dayTimeDuration-from-date-3'/1]).
-export(['op-subtract-dayTimeDuration-from-date-4'/1]).
-export(['op-subtract-dayTimeDuration-from-date-5'/1]).
-export(['op-subtract-dayTimeDuration-from-date-6'/1]).
-export(['op-subtract-dayTimeDuration-from-date-7'/1]).
-export(['op-subtract-dayTimeDuration-from-date-8'/1]).
-export(['op-subtract-dayTimeDuration-from-date-9'/1]).
-export(['op-subtract-dayTimeDuration-from-date-10'/1]).
-export(['op-subtract-dayTimeDuration-from-date-12'/1]).
-export(['op-subtract-dayTimeDuration-from-date-13'/1]).
-export(['op-subtract-dayTimeDuration-from-date-14'/1]).
-export(['op-subtract-dayTimeDuration-from-date-15'/1]).
-export(['op-subtract-dayTimeDuration-from-date-16'/1]).
-export(['K-DateSubtractDTD-1'/1]).
-export(['cbcl-subtract-dayTimeDuration-from-date-001'/1]).
-export(['cbcl-subtract-dayTimeDuration-from-date-002'/1]).

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "op"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'op-subtract-dayTimeDuration-from-date2args-1',
            'op-subtract-dayTimeDuration-from-date2args-2',
            'op-subtract-dayTimeDuration-from-date2args-3',
            'op-subtract-dayTimeDuration-from-date2args-4',
            'op-subtract-dayTimeDuration-from-date2args-5',
            'op-subtract-dayTimeDuration-from-date-1',
            'op-subtract-dayTimeDuration-from-date-2',
            'op-subtract-dayTimeDuration-from-date-3',
            'op-subtract-dayTimeDuration-from-date-4',
            'op-subtract-dayTimeDuration-from-date-5',
            'op-subtract-dayTimeDuration-from-date-6',
            'op-subtract-dayTimeDuration-from-date-7',
            'op-subtract-dayTimeDuration-from-date-8',
            'op-subtract-dayTimeDuration-from-date-9',
            'op-subtract-dayTimeDuration-from-date-10',
            'op-subtract-dayTimeDuration-from-date-12',
            'op-subtract-dayTimeDuration-from-date-13',
            'op-subtract-dayTimeDuration-from-date-14',
            'op-subtract-dayTimeDuration-from-date-15',
            'op-subtract-dayTimeDuration-from-date-16',
            'K-DateSubtractDTD-1',
            'cbcl-subtract-dayTimeDuration-from-date-001',
            'cbcl-subtract-dayTimeDuration-from-date-002'
        ]}
    ].

'op-subtract-dayTimeDuration-from-date2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1970-01-01Z\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1970-01-01Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1983-11-17Z\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1983-11-17Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2030-12-31Z\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2030-12-31Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1970-01-01Z\") - xs:dayTimeDuration(\"P15DT11H59M59S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1969-12-16Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1970-01-01Z\") - xs:dayTimeDuration(\"P31DT23H59M59S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1969-11-30Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2000-10-30\") - xs:dayTimeDuration(\"P3DT1H15M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2000-10-26") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(xs:date(\"2000-12-12Z\") - xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1999-10-23Z\") - xs:dayTimeDuration(\"P19DT13H10M\"))) or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") - xs:dayTimeDuration(\"P02DT07H01M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") - xs:dayTimeDuration(\"P03DT08H06M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:number(xs:date(\"1988-01-28Z\") - xs:dayTimeDuration(\"P10DT08H01M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:date(\"1989-07-05Z\") - xs:dayTimeDuration(\"P01DT09H02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1989-07-03Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:date(\"0001-01-01Z\") - xs:dayTimeDuration(\"P11DT02H02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_string_value(Res, "-0001-12-20Z") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "0000-12-20Z") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1993-12-09Z\") - xs:dayTimeDuration(\"P03DT01H04M\"))) and fn:string((xs:date(\"1993-12-09Z\") - xs:dayTimeDuration(\"P01DT01H03M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1985-07-05Z\") - xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:date(\"1985-07-05Z\") - xs:dayTimeDuration(\"P01DT01H03M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1980-03-02Z\") - xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1980-05-05Z\") - xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:date(\"1980-05-05Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1979-12-12Z\") - xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:date(\"1979-12-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1978-12-12Z\") - xs:dayTimeDuration(\"P17DT10H02M\")) le xs:date(\"1978-12-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dayTimeDuration-from-date-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1977-12-12Z\") - xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:date(\"1977-12-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dayTimeDuration-from-date-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-DateSubtractDTD-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:date(\"1999-08-12\") - xs:dayTimeDuration(\"P23DT09H32M59S\") eq xs:date(\"1999-07-19\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DateSubtractDTD-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-subtract-dayTimeDuration-from-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; local:date(2008, 05, 12) - xs:dayTimeDuration(\"P0D\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-dayTimeDuration-from-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2008-05-12") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-subtract-dayTimeDuration-from-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; local:date(-25252734927766555, 05, 12) - xs:dayTimeDuration(\"P4267296D\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-dayTimeDuration-from-date-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
