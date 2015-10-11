
TestUICtrl = {};
local this = TestUICtrl;

local testbtn;
local transform;
local gameObject;

--��������--
function TestUICtrl.New()
	warn("TestUICtrlCtrl.New--->>");
	return this;
end

function TestUICtrl.Awake()
	warn("TestUICtrlCtrl.Awake--->>");
	PanelManager:CreatePanel('TestUI', this.OnCreate);
end

--�����¼�--
function TestUICtrl.OnCreate(obj)
	gameObject = obj;

	local panel = gameObject:GetComponent('UIPanel');
	panel.depth = 20;	--��������--

	testbtn = gameObject:GetComponent('LuaBehaviour');
	testbtn:AddClick(TestUIPanel.btnOpen, this.OnClick);

	warn("Start lua--->>"..gameObject.name);
end

--�����¼�--
function TestUICtrl.OnClick(go)
	destroy(gameObject);
end

--�ر��¼�--
function TestUICtrl.Close()
	PanelManager:ClosePanel(CtrlName.TestUI);
end