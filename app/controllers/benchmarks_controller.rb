class BenchmarksController < ApplicationController
  
  def noko
    @leaderboard = mock_leaderboard
    render :template => 'benchmarks/nokogiri.nxml'
  end
  
  def builder
    @leaderboard = mock_leaderboard
    render :template => 'benchmarks/builder.rxml'
  end
  
  def noko_small
    @leaderboard = mock_leaderboard
    render :template => 'benchmarks/nokogiri_small.nxml'
  end
  
  def builder_small
    @leaderboard = mock_leaderboard
    render :template => 'benchmarks/builder_small.rxml'
  end
  
  Leaderboard   = Struct.new(:total_entries, :row_start, :row_end, :current_page, :total_pages, :columns, :stats )
  
  class Stat
    attr_reader :attributes
    def initialize
      # fake attributes
      @attributes = {}
      0.upto(15).map{|n| @attributes["attr_#{n}"] = "level='level #{n}', timestamp='#{Time.now}'"}
    end
  end
  
  private
  
  def mock_leaderboard
    prep_columns = %w{test0 test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test11 test12 test13 test14 test15}
    Leaderboard.new(1000, 1, 4, 25, 52, prep_columns, 0.upto(50).map{ Stat.new})
  end
  
  
end
