puts "じゃんけん..."

def janken

  puts "0(グー)1(チョキ)2(パー)3(戦わない)"


  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ","パー"]

  case player_hand
  when 3 then
    puts "終了しました"
    return false
  else
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{jankens[player_hand]}を出しました \n相手:#{jankens[program_hand]}を出しました"

    if player_hand == program_hand
      puts "---------------"
      puts "あいこで"
      return true

    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
      #じゃんけんで勝った場合
      puts "---------------"
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"

      player_face = gets.to_i
      program_face = rand(4)

      attimuite = ["上", "下","左","右"]

      if player_face == program_face
        #あっち向いてホイで勝った場合
        puts "ホイ！"
        puts "---------------"
        puts "あなた:#{attimuite[player_face]} \n相手:#{attimuite[program_face]}"
        puts "\nあなたの勝ち"
        return false
      else
        #違う場合
        puts "ホイ！"
        puts "---------------"
        puts "あなた:#{attimuite[player_face]} \n相手:#{attimuite[program_face]}"
        puts "じゃんけん..."
        return true
      end

    else
      #じゃんけんで負けた場合
      puts "---------------"
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"

      player_face = gets.to_i
      program_face = rand(4)

      attimuite = ["上", "下","左","右"]

      if player_face == program_face
        #あっち向いてホイで負けた場合
        puts "ホイ！"
        puts "---------------"
        puts "あなた:#{attimuite[player_face]} \n相手:#{attimuite[program_face]}"
        puts "\nあなたの負け"
        return false
      else
        #違う場合
        puts "ホイ！"
        puts "---------------"
        puts "あなた:#{attimuite[player_face]} \n相手:#{attimuite[program_face]}"
        puts "じゃんけん..."
        return true
      end
    end
  end
end



  next_game = true

  while next_game
  next_game = janken
  end
