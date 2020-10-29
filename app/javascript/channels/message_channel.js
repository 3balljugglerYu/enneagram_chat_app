import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    var time=new Date();
    var hour=time.getHours()
    var min=time.getMinutes()
    console.log(hour)
    console.log(min)

    const html = `
    <div class="content_entire_partner">
      <div class="content_partner">
        <p>${data.content.content}</p>
        <div class="time">${hour}:${min}</div>
      </div>
    </div>
    `;


    const messages = document.getElementById('contents');
    const newMessage = document.getElementById('message_content');
    messages.insertAdjacentHTML(`beforeend`, html);
    newMessage.value=``;

    const end = document.getElementById('end')
    end.scrollIntoView({
      block:"end"
    });
    }
});