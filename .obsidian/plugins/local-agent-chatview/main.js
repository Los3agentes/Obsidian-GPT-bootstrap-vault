const {Plugin, Notice}=require('obsidian');
module.exports=class LocalAgentChatView extends Plugin {
 async onload(){
  this.addCommand({id:'insert-assistant-bubble',name:'Insert assistant bubble',editorCallback:(editor)=>{editor.replaceSelection('> [!assistant] Agent\n> Message\n');new Notice('Assistant bubble inserted');}});
  this.addCommand({id:'insert-user-bubble',name:'Insert user bubble',editorCallback:(editor)=>{editor.replaceSelection('> [!user] You\n> Message\n');new Notice('User bubble inserted');}});
 }
};
