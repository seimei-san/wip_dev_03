import re
from datetime import timedelta
import datetime

def define_dates(msg_decoded):
    dt_now = datetime.date.today()
    print(dt_now)

    #昼一番
    msg_decoded = msg_decoded.replace('昼一番', '昼一')

    #朝一番
    msg_decoded = msg_decoded.replace('朝一番', '朝一')

    
    #曜日を曜に
    msg_decoded = msg_decoded.replace('曜日', '曜')

    #「週の」を「週」に
    msg_decoded = msg_decoded.replace('週の', '週')

    #今日
    msg_decoded = msg_decoded.replace('今日', dt_now.strftime('%Y/%m/%d'))

    #本日
    msg_decoded = msg_decoded.replace('本日', dt_now.strftime('%Y/%m/%d'))

    #明日
    msg_decoded = msg_decoded.replace('明日', (dt_now+timedelta(1)).strftime('%Y/%m/%d') + "(" + get_weekday((dt_now+timedelta(1)).weekday()) + ")")
    
    #明後日
    msg_decoded = msg_decoded.replace('明後日', (dt_now+timedelta(2)).strftime('%Y/%m/%d') + "(" + get_weekday((dt_now+timedelta(2)).weekday()) + ")")

    
    ############## 再来週 ################
    #再来週月曜
    msg_decoded = msg_decoded.replace('再来週月曜', get_next_target_date(dt_now, 2, '月曜') + '(月曜日)')

    #再来週火曜
    msg_decoded = msg_decoded.replace('再来週火曜', get_next_target_date(dt_now, 2, '火曜') + '(火曜日)')

    #再来週水曜
    msg_decoded = msg_decoded.replace('再来週水曜', get_next_target_date(dt_now, 2, '水曜') + '(水曜日)')

    #再来週木曜
    msg_decoded = msg_decoded.replace('再来週木曜', get_next_target_date(dt_now, 2, '木曜') + '(木曜日)')

    #再来週金曜
    msg_decoded = msg_decoded.replace('再来週金曜', get_next_target_date(dt_now, 2, '金曜') + '(金曜日)')

    #再来週土曜
    msg_decoded = msg_decoded.replace('再来週土曜', get_next_target_date(dt_now, 2, '土曜') + '(土曜日)')

    #再来週日曜
    msg_decoded = msg_decoded.replace('再来週日曜', get_next_target_date(dt_now, 2, '日曜') + '(日曜日)')

    #再来週末
    msg_decoded = msg_decoded.replace('再来週末', get_next_target_date(dt_now, 2, '土曜') + '(土曜日)')

    ############## 来週 ################
    #来週末
    msg_decoded = msg_decoded.replace('来週末', get_next_target_date(dt_now, 1, '土曜') + '(土曜日)')

    #来週月曜
    msg_decoded = msg_decoded.replace('来週月曜', get_next_target_date(dt_now, 1, '月曜') + '(月曜日)')

    #来週火曜
    msg_decoded = msg_decoded.replace('来週火曜', get_next_target_date(dt_now, 1, '火曜') + '(火曜日)')

    #来週水曜
    msg_decoded = msg_decoded.replace('来週水曜', get_next_target_date(dt_now, 1, '水曜') + '(水曜日)')

    #来週木曜
    msg_decoded = msg_decoded.replace('来週木曜', get_next_target_date(dt_now, 1, '木曜') + '(木曜日)')

    #来週金曜
    msg_decoded = msg_decoded.replace('来週金曜', get_next_target_date(dt_now, 1, '金曜') + '(金曜日)')

    #来週土曜
    msg_decoded = msg_decoded.replace('来週土曜', get_next_target_date(dt_now, 1, '土曜') + '(土曜日)')

    #来週日曜
    msg_decoded = msg_decoded.replace('来週日曜', get_next_target_date(dt_now, 1, '日曜') + '(日曜日)')
    
    
    #x週間後月曜

    #xヶ月後

    #昼まで
    msg_decoded = msg_decoded.replace('昼まで', '12:00PMまで')

    #朝まで
    msg_decoded = msg_decoded.replace('朝まで', '09:00AMまで')

    #昼一
    msg_decoded = msg_decoded.replace('昼まで', '12:00PMまで')

    #朝一
    msg_decoded = msg_decoded.replace('朝まで', '09:00AMまで')

    #夕方まで
    msg_decoded = msg_decoded.replace('明日', (dt_now+timedelta(1)).strftime('%Y/%m/%d') + "(" + get_weekday((dt_now+timedelta(1)).weekday()) + ")")

    #来月

    #翌月

    #再来月
    

    #来年

    #再来年
    return msg_decoded


def get_weekday(num):
    if (num == 0):
        return "月曜日"
    elif (num == 1):
        return "火曜日"
    elif (num == 2):
        return "水曜日"
    elif (num == 3):
        return "木曜日"
    elif (num == 4):
        return "金曜日"
    elif (num == 5):
        return "土曜日"
    elif (num == 6):
        return "日曜日"

def get_next_target_date(date, num_week, target_week):
    week = ['月曜', '火曜', '水曜', '木曜', '金曜', '土曜', '日曜']
    weekday = date.weekday()
    add_days = (num_week * 7) - weekday + week.index(target_week)
    next_target_date = date + datetime.timedelta(days = add_days)
    return next_target_date.strftime('%Y/%m/%d')

if __name__ == "__main__":
    print(define_dates("資料の作成を明日の昼までにお願いします。"))