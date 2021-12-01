class Team
  attr_accessor :name, :win, :lose, :draw
  
  #初期化
  def initialize(name)
    self.name = name
    if name == 'Giants'
      self.win = 67
      self.lose = 45
      self.draw = 8
    elsif name == 'Tigers'
      self.win = 60
      self.lose = 53
      self.draw = 7
    elsif name == 'Dragons'
      self.win = 60
      self.lose = 55
      self.draw = 5
    elsif name == 'BayStars'
      self.win = 56
      self.lose = 58
      self.draw = 6
    elsif name == 'Carp'
      self.win = 52
      self.lose = 56
      self.draw = 12
    elsif name == 'Swallows'
      self.win = 41
      self.lose = 69
      self.draw = 10
    end
  end
  
  #勝率の計算
  def calc_win_rate
    return self.win.to_f / (self.win + self.lose)
  end
  
  #チームの成績
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end

#インスタンスの生成
team_Giants = Team.new('Giants')
team_Tigers = Team.new('Tigers')
team_Dragons = Team.new('Dragons')
team_BayStars = Team.new('BayStars')
team_Carp = Team.new('Carp')
team_Swallows = Team.new('Swallows')

#show_team_result の呼び出し
team_Giants.show_team_result
team_Tigers.show_team_result
team_Dragons.show_team_result
team_BayStars.show_team_result
team_Carp.show_team_result
team_Swallows.show_team_result
