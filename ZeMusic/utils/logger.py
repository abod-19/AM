from pyrogram.enums import ParseMode

from ZeMusic import app
from ZeMusic.utils.database import is_on_off
from config import LOGGER_ID


async def play_logs(message, streamtype):
    if await is_on_off(2):
        logger_text = f"""
<b>تشغيل</b>

<b>شات ايدي :</b> <code>{message.chat.id}</code>
<b>الاسم :</b> {message.chat.title}
<b>اليوزر :</b> @{message.chat.username}

<b>ايدي :</b> <code>{message.from_user.id}</code>
<b>الاسم :</b> {message.from_user.mention}
<b>يوزر :</b> @{message.from_user.username}

<b>الاغنيه :</b> {message.text.split(None, 1)[1]}
<b>اسم المشغل :</b> {streamtype}"""
        if message.chat.id != LOGGER_ID:
            try:
                await app.send_message(
                    chat_id=LOGGER_ID,
                    text=logger_text,
                    parse_mode=ParseMode.HTML,
                    disable_web_page_preview=True,
                )
            except:
                pass
        return
