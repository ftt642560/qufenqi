package com.qufenqi.entity;

/**
 * 还款实体
 * @author Administrator
 *
 */
public class Repayment {
	/**
	 * 还款id
	 */
	private int repaymentId;
	/**
	 * 已经完成的还款期数
	 */
	private int finishPeriodNum;
	/**
	 * 还需要还款期数
	 */
	private int needPeriodNum;
	/**
	 * 一个月还款多少
	 */
	private float onePeriodMoney;
	/**
	 * 还款状态
	 */
	private int repaymentState;
	public int getRepaymentId() {
		return repaymentId;
	}
	public void setRepaymentId(int repaymentId) {
		this.repaymentId = repaymentId;
	}
	public int getFinishPeriodNum() {
		return finishPeriodNum;
	}
	public void setFinishPeriodNum(int finishPeriodNum) {
		this.finishPeriodNum = finishPeriodNum;
	}
	public int getNeedPeriodNum() {
		return needPeriodNum;
	}
	public void setNeedPeriodNum(int needPeriodNum) {
		this.needPeriodNum = needPeriodNum;
	}
	public float getOnePeriodMoney() {
		return onePeriodMoney;
	}
	public void setOnePeriodMoney(float onePeriodMoney) {
		this.onePeriodMoney = onePeriodMoney;
	}
	public int getRepaymentState() {
		return repaymentState;
	}
	public void setRepaymentState(int repaymentState) {
		this.repaymentState = repaymentState;
	}
	@Override
	public String toString() {
		return "Repayment [repaymentId=" + repaymentId + ", finishPeriodNum="
				+ finishPeriodNum + ", needPeriodNum=" + needPeriodNum
				+ ", onePeriodMoney=" + onePeriodMoney + ", repaymentState="
				+ repaymentState + "]";
	}
}
