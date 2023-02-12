function Tinh(Lib, Offset, Replaced) local info = gg.getTargetInfo() localpack = info.nativeLibraryDir local t = gg.getRangesList(localpack..'/lib'..Lib..'.so') for _, __ in pairs(t) do local t = gg.getValues({{address = __.start, flags = gg.TYPE_DWORD}, {address = __.start + 18, flags = gg.TYPE_WORD}}) if t[1].value == 1179403647 then Offset = __['start'] + Offset end assert(Offset ~= nil, '[rwmem]: error, provided address is nil.') _rw = {} if type(Replaced) == 'number' then _ = '' for _ = 1, Replaced do _rw[_] = {address = (Offset - 1) + _, flags = gg.TYPE_BYTE} end for v, __ in ipairs(gg.getValues(_rw)) do _ = _ .. string.format('%02X', __.value & 255) end return _ end Byte = {} Replaced:gsub('..', function(x) Byte[#Byte + 1] = x _rw[#Byte] = {address = (Offset - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. 'h'} end) gg.setValues(_rw) end end
fileData = gg.EXT_STORAGE .. "Su.log"
function Main()
menu = gg.multiChoice({
""..T.."Tàn Hình || Bật Cuối"..T.."",---1
"[ Menu Định Vị || Bật Ở Sảnh ]",---2
"[ Ghim Tâm 1800° || [ Bật Trong Trận ]",---4
"[ Ghim Ống Ngắm 45° || [ Bật Trong Trận ]",---5
"[ Không Giật || [ Bật Ở Sảnh]",----6
"[ Đạn Ma Thuật || Bật Ở Sảnh ]",---7
"[ Chạy Nhanh X3 || [ Bật Trong Trận ]",---8
"[ Trời Tối || Bật Trong Trận ]",---9
"[ Heashot Đầu Ngược|| Login ]",---10
"[ Heashot Cu Dài || Bật Ở Login ]",---11
"Exit"--12
}, nil, '✍ Create:Tính Lửa Chùa ')
if menu == nil then
else
if menu[1] == true then tinh1() end
if menu[2] == true then tinh2() end
if menu[3] == true then tinh3() end
if menu[4] == true then tinh4() end
if menu[5] == true then tinh5() end
if menu[6] == true then tinh6() end
if menu[7] == true then tinh7() end
if menu[8] == true then tinh8() end
if menu[9] == true then tinh9() end
if menu[10] == true then tinh10() end
if menu[11] == true then tinh11() end
if menu[12] == true then tinh12() end
if menu[13] == true then tinh13() end
end
XGCK =-1
end

T = " 👻 "
function tinh1()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-498216876;-509583360;-442560580;-509587455;-527499264;-439353344;-481296384;436207622:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("-509583360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(52000, nil, nil, nil, nil, nil, nil, nil, nil)
Ghost = true menuk = -1
setup = false
while true do
if gg.isVisible(true) then
menuk = 1
gg.setVisible(false)
end
if menuk == 1 then gg.isVisible(false)
menuk = -1
if not setup then setup = not setup
else
if Ghost == true then
Ghost = false
gg.editAll("-516948194", gg.TYPE_DWORD)
a = "Bật"
else
gg.editAll("-509583360", gg.TYPE_DWORD)
a = "Tắt"
Ghost = true
end
gg.toast(" "..a.. " ")
end
end
end
end
function tinh2()
M = gg.multiChoice({
"[ Định Vị Đầu ]",
"[ Định Vị Vai ]",
"[ Định Vị Tay ]",
"[ Định Vị Laze Tím ]",
"[ NPC Name ]",
}, nil, 'Script FF Thường')
      if M == nil then
else
if M[1] == true then m1() end
if M[2] == true then m2() end
if M[3] == true then m3() end
if M[4] == true then m4() end
if M[5] == true then m5() end
if M[6] == true then m6() end
end
MK=-1
end
function m1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.5538861e-7F;1F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5.9762459e-7F;1F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[ Định Vị Đầu Bật [✅]")
end
function m2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0F;0.00097126886F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.12216301262F;0F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[ Định Vị Vai Bật [✅]")
end
function m3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.02980032004;1:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.09043131769;1:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[Định Vị  Tay Bật [✅]")
end

function tinh4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("00002042rD;00004040rD;00007042rD;A470FD3ErD;AE47013FrD;A470FD3ErD;AE47013FrD;AE47E13ErD;295C0F3FrD;14AEC73ErD;F6281C3FrD;0000C03FrD:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1077936128;1069547520", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-20000;1,148,829,696", 4)
gg.clearResults()
gg.toast("[ Ghim Tâm 360° Bật [✅]")
end

function tinh5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,069,547,520A;1,075,000,115A;1,069,547,520A:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("1,075,000,115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("-5", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("[ Ghim Ống Ngắm 45° Bật] [✅]")
end

function tinh6()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h 10 8C BD E8 00 00 7A 44 F0 48 2D E9",
gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll("h 10 8C BD E8 00 00 00 00 F0 48 2D E9", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("[ Không Giật ] [✅]")
end

function tinh7()
gg.setRanges(32)
gg.searchNumber("h23AAA6B8460ACD70",1)
gg.getResults(gg.getResultsCount())
gg.editAll("h23AAA6B8B2F71FA4",1)
gg.clearResults()
gg.searchNumber("h477B5ABDAE5766BB5C1F48BA1BC0CF3B9CFB283DA2B117BDE4997F3F0400803F0000803FFEFF7F3F",1)
gg.getResults(gg.getResultsCount())
gg.editAll("h8D07743FAE5766BB5C1F48BA1BC0CF3B9CFB283DA2B117BDE4997F3F000060410000604100006041",1)
gg.clearResults()
gg.searchNumber("h4C7B5ABD0A5766BB1E2148BA2AC2CF3B96FB283DE8B117BDE3997F3F0400803F0100803FFCFF7F3F",1)
gg.getResults(gg.getResultsCount())
gg.editAll("h1B0E743FAE5766BB5C1F48BA1BC0CF3B9CFB283DA2B117BDE4997F3F000060410000604100006041",1)
gg.clearResults()
gg.searchNumber("h1000000062006F006E0065005F004C006500660074005F0057006500610070006F006E00",1)
gg.getResults(gg.getResultsCount())
gg.editAll("h1000000062006F006E0065005F005300700069006E006500000000000000000000000000",1)
gg.clearResults()
On()
end 

function tinh8()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.80259693e-44F;1.20000004768F;0.18000000715F;1.40129846e-45F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1.20000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.780", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[ Chạy Nhanh X3 Bật ] [✅]") 
end



function tinh9()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.18059669e21;0.00999999978;9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber(" 9.99999997e-7", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("10", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[ Trời Tối Bật ] [✅]") 
end



function tinh10()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":_Hipsb", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(400)
  gg.editAll(":_Necksb", gg.TYPE_BYTE)
  gg.clearResults()
gg.clearResults(16384)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.setVisible(false)
gg.searchNumber(";bone_Spine", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(16384)
gg.setVisible(false)
gg.editAll(";bone_Head1", gg.TYPE_WORD)
gg.clearResults(16384)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.0446202829", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(300)
gg.editAll("0.0,6", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.0388151556", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(300)
gg.editAll("0.0,6", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.07869631797;0.99689865112;1.0;1.0;1.0::17", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
gg.getResults(999)
gg.editAll("1.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.98958933353;1.0;1.0;1.0::17", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
gg.getResults(99)
gg.editAll("1.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[ HS DPS Bật ][✅]")
end



function tinh11()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("h 5F 48 69 70 73 62",
gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll("h 5F 48 65 61 64 62", gg.TYPE_BYTE)
gg.clearResults()



gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("h A1 58 C3 05",
gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll("h 24 1A 56 78", gg.TYPE_BYTE)
gg.clearResults()




gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("h C2 C3 36 BD 66 8E 81 BB 14 FE CC B1 CF 28 B8 AA 15 EB A8 B4 23 53 E8 3D F5 58 7E 3F FE FF 7F 3F FE FF 7F 3F 00 00 80 3F",
gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll("h CD CC 4C BF 66 8E 81 BB 14 FE CC B1 CF 28 B8 AA 15 EB A8 B4 23 53 E8 3D F5 58 7E 3F 00 00 C0 BF 00 00 C0 BF 00 00 C0 BF", gg.TYPE_BYTE)
gg.clearResults()



gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("h A4 FC 1E BD 66 8E 81 BB B8 FE CC B1 56 31 38 AA AC 5D 6A B4 89 2B A1 3D C0 34 7F 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F",
gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll("h CD CC 4C BF 66 8E 81 BB B8 FE CC B1 56 31 38 AA AC 5D 6A B4 89 2B A1 3D C0 34 7F 3F 00 00 C0 BF 00 00 C0 BF 00 00 C0 BF", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("[  HS Cu Dài ][✅]")
end



function tinh13()
os.exit()
end
  exit = 2
  if gg.isVisible(true) then
    XGCK = 1
  gg.setVisible(false)
  end
  
    time = _G.os.clock()
    for _FORV_19_ = 1, 5 do
    if 2 <= _G.os.clock() - time then
      _G.gg.removeListItems(save)
      i = 1
    gg.alert('🛡️ KÍCH HOẠT CHỐNG DECOMPILE 🛡️')
    gg.setVisible(false)
      while true do
        i = i + 1
      gg.alert('🛡️ KÍCH HOẠT CHỐNG DECOMPILE 🛡️')
      gg.setVisible(true)
      end
      return
    end
  while true do
    if gg.isVisible(true) then
      XGCK = 1
    gg.setVisible(false)
    end
    if XGCK == 1 then
      Main()
    end
  end
end