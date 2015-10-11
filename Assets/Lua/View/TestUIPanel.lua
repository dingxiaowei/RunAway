local transform;
local gameObject;

TestUIPanel = {};
local this = TestUIPanel;

--�����¼�--
function TestUIPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;

	this.InitPanel();
	warn("Awake lua--->>"..gameObject.name);
end

--��ʼ�����--
function TestUIPanel.InitPanel()
	this.btnOpen = transform:FindChild("btn").gameObject;
end

--�����¼�--
function TestUIPanel.OnDestroy()
	warn("OnDestroy---->>>");
end