#ifndef YDWERecordSystemIncluded
#define YDWERecordSystemIncluded

library YDWERecord

	function YDWERecordGetI takes player p,string kid returns integer
		return GetStoredInteger(GC[GetPlayerId(p)], "", kid)
	endfunction

	function YDWERecordSetI takes player p,string kid,integer data returns nothing
		call StoreInteger(GC[GetPlayerId(p)], "", kid, data)
	endfunction

	function YDWERecordSave takes player p returns nothing
		if not IsPlayerObserver(p) then
			call SaveGameCache(GC[GetPlayerId(p)])
		endif
	endfunction

	function YDWERecordClear takes player p returns nothing
		call FlushGameCache(GC[GetPlayerId(p)])
	endfunction
endlibrary

#endif /// YDWERecordSystemIncluded
