# 리스트 6-15 ctrl_controller.rb

class CtrlController < ApplicationController

  def log
    logger.unknown('unknown')
    logger.fatal('fatal')
    logger.error('error')
    logger.warn('warn')
    logger.info('info')
    logger.debug('debug')
    render text: '로그는 콘솔 또는 로그 파일에서 확인해주세요.'
  end
  
end
