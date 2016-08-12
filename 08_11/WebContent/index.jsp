<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/avgrund.css">
<link rel="stylesheet" href="css/avgrund_style.css">
</head>
<body>
<jsp:include page="/fragment/top.jsp" />
<div class="buttons">
<a href="#" id="show" class="button left">Show it</a>
</div>
	
	
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/jquery.avgrund.min.js"></script>
<script>
$(function() {
	$('#show').avgrund({
		width: 640, // max is 640px
		height: 500, // max is 350px
		showClose: true, // switch to 'true' for enabling close button
		showCloseText: 'X', // type your text for close button
		closeByEscape: true, // enables closing popup by 'Esc'..
		closeByDocument: false, // ..and by clicking document itself
		holderClass: 'custom', // lets you name custom class for popin holder..
// 		overlayClass: '', // ..and overlay block
		enableStackAnimation: false, // another animation type
// 		onBlurContainer: '', // enables blur filter for specified block
		openOnEvent: true, // set to 'false' to init on load
		setEvent: 'click', // use your event like 'mouseover', 'touchmove', etc.
// 		onLoad: function (elem) { ... }, // set custom call before popin is inited..
// 		onUnload: function (elem) { ... }, // ..and after it was closed
// 		template: 'String content..' // or function (elem) { }, or $('.content')
		template: '<form rel="async" class="_s" action="/ajax/groups/create_post.php" method="post" onsubmit="return window.Event &amp;&amp; Event.__inlineSubmit &amp;&amp; Event.__inlineSubmit(this,event)" id="u_b_a"><input type="hidden" name="fb_dtsg" value="AQGJevfwLaWC:AQGcMtznIoEE" autocomplete="off"><div class="_4-i0" id="u_b_0"><div class="clearfix"><div class="lfloat _ohe"><h3 class="_52c9">建立新社團</h3></div><div class="_51-u rfloat _ohf"></div></div></div><div class="_4-i2 _50f4"><div class="pam"><div class="mbm pam hidden_elem uiBoxRed" id="u_b_1"></div><input type="hidden" autocomplete="off" name="ref" value="bookmarks"><table role="presentation" class="_o8w _3stn"><tbody><tr class="_o8t _3stt"><th class="_3sts" id="groupsCreateName">社團名稱</th><td class="_480u"><input type="text" class="inputtext pls _o8q" autofocus="1" name="name" required="1" autocomplete="off" maxlength="75" autocapitalize="1" aria-labelledby="groupsCreateName" aria-required="true" id="u_b_2" tabindex="0"></td></tr><tr class="_o8x _3stt"><th class="_3sts" id="groupsCreateMembers">成員名單</th><td class="_480u"><div><div class="clearfix uiTokenizer uiInlineTokenizer _o8v groupsAddMemberTokenizer" onclick="$(&quot;u_b_5&quot;).focus();" aria-labelledby="groupsCreateMembers" id="u_b_6"><div class="tokenarea hidden_elem" id="u_b_b"></div><div class="uiTypeahead uiContextualLayerParent uiGroupsAddTypeaheadView" data-ft="{&quot;tn&quot;:&quot;+Q&quot;}" id="u_b_7"><div class="wrap"><input type="hidden" autocomplete="off" class="hiddenInput"><div class="innerWrap"><input type="text" class="inputtext textInput" placeholder="輸入姓名或電子郵件地址……" id="u_b_5" data-placeholder="輸入姓名或電子郵件地址……" autocomplete="off" aria-autocomplete="list" aria-expanded="false" aria-owns="typeahead_list_u_b_7" aria-haspopup="true" role="combobox" spellcheck="false" aria-label="輸入姓名或電子郵件地址……" style="width: 197px;"></div></div></div></div><div class="pam groupsAddMemberMessageBox hidden_elem uiBoxGray" id="u_b_3"><div class="phs pts groupsAddMemberMessage fsm fwn fcg"></div></div><div class="groupsSuggestedMemberDiv hidden_elem"><img class="ptm pls groupSuggestedThrobber hidden_elem img" src="https://www.facebook.com/rsrc.php/v2/yb/r/GsNJNwuI-UM.gif" alt="" width="16" height="11"><div class="phs pts groupsSuggestedMembers fsm fwn fcg" id="u_b_4"></div></div></div></td></tr><tr class="_3sto"><td colspan="2"><hr></td></tr></tbody><tbody><tr class="_2z6u _3stt"><th class="_3sts">最愛</th><td class="_480u"><div class="uiInputLabel clearfix uiInputLabelLegacy"><input type="checkbox" name="add_to_favorites" class="uiInputLabelInput uiInputLabelCheckbox" id="u_b_8"><label for="u_b_8" class="uiInputLabelLabel">將此社團加到最愛。</label></div></td></tr><tr class="_3sto"><td colspan="2"><hr></td></tr></tbody><tbody><tr class="_5lbj _3stt"><th class="_3sts">隱私</th><td class="_480u"><ul class="uiList pbm prl _4kg _6-h _6-j _4ks" role="radiogroup"><li id="item_1"><div class="uiInputLabel clearfix uiInputLabelLegacy"><input type="radio" id="privacy_1" name="privacy" value="open" aria-describedby="groupsCreatePrivacy" class="uiInputLabelInput uiInputLabelRadio"><label class="_4drr uiInputLabelLabel" for="privacy_1"><span class="fwb"><span class="uiIconText _4drp"><img class="img" src="https://www.facebook.com/rsrc.php/v2/yt/r/_Ztphb7IO9k.png" alt="" width="16" height="16"><div id="privacy_label_1">公開</div></span></span><div class="_4drq fsm fwn fcg" id="groupPrivacyDescription_1">所有人都可以查看這個社團、社團的成員和他們的貼文。</div></label></div></li><li id="item_2"><div class="uiInputLabel clearfix uiInputLabelLegacy"><input type="radio" id="privacy_2" name="privacy" value="closed" checked="1" aria-describedby="groupsCreatePrivacy" class="uiInputLabelInput uiInputLabelRadio"><label class="_4drr uiInputLabelLabel" for="privacy_2"><span class="fwb"><span class="uiIconText _4drp"><i class="img sp_MVJF6-44Pr7 sx_f6d102"></i><div id="privacy_label_2">不公開</div></span></span><div class="_4drq fsm fwn fcg" id="groupPrivacyDescription_2">所有人都可以找到這個社團和查看其中的成員。只有成員才可以查看貼文。</div></label></div></li><li id="item_3"><div class="uiInputLabel clearfix uiInputLabelLegacy"><input type="radio" id="privacy_3" name="privacy" value="secret" aria-describedby="groupsCreatePrivacy" class="uiInputLabelInput uiInputLabelRadio"><label class="_4drr uiInputLabelLabel" for="privacy_3"><span class="fwb"><span class="uiIconText _4drp"><i class="img sp_MVJF6-44Pr7 sx_52b7b7"></i><div id="privacy_label_3">私密</div></span></span><div class="_4drq fsm fwn fcg" id="groupPrivacyDescription_3">只有成員才可以找到這個社團和查看貼文。</div></label></div></li></ul><div id="u_b_9"><a class="_o8s" target="_blank" href="/help/?faq=220336891328465#What-are-the-privacy-options-for-groups">深入瞭解社團隱私</a></div></td></tr></tbody></table></div><input type="hidden" autocomplete="off" name="session_id" value="57ad796c55ee0"></div><div class="_5lnf uiOverlayFooter _5a8u"><a class="_42ft _4jy0 layerCancel uiOverlayButton _4jy3 _517h _51sy" role="button" href="#">取消</a><button value="1" class="_42ft _4jy0 layerConfirm uiOverlayButton _4jy3 _4jy1 selected _51sy" type="submit">建立</button></div></form>'

	});
});
</script>
</body>
</html>