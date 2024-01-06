; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1991 = alloca { i64, [0 x i64] }*
  %_1992 = alloca i64
  %_1993 = alloca i64
  %_argv1988 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1988
  %_argc1987 = alloca i64
  store i64 %argc, i64* %_argc1987
  %_1989 = bitcast [6 x i8]* @str to i8*
  %_1990 = call { i64, [0 x i64] }* @array_of_string(i8* %_1989)
  store { i64, [0 x i64] }* %_1990, { i64, [0 x i64] }** %_1991
  store i64 0, i64* %_1992
  store i64 0, i64* %_1993
  br label %_cnd1996
_cnd1996:
  %_1994 = load i64, i64* %_1993
  %_1995 = icmp slt i64 %_1994, 5
  br i1 %_1995, label %_loop1998, label %_end1997
_loop1998:
  %_1999 = load i64, i64* %_1992
  %_2000 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1991
  %_2001 = load i64, i64* %_1993
  %_2004 = bitcast { i64, [0 x i64] }* %_2000 to i64*
  %_2002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2000, i32 0, i32 1, i64 %_2001
  %_2003 = load i64, i64* %_2002
  %_2005 = add i64 %_1999, %_2003
  store i64 %_2005, i64* %_1992
  %_2006 = load i64, i64* %_1993
  %_2007 = add i64 %_2006, 1
  store i64 %_2007, i64* %_1993
  br label %_cnd1996
_end1997:
  %_2008 = load i64, i64* %_1992
  call void @print_int(i64 %_2008)
  %_2010 = load i64, i64* %_1992
  ret i64 %_2010
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
