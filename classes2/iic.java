public enum iic {
  FORMALIZACAO_AUTHORIZE_PROPOSAL,
  FORMALIZACAO_CANCEL_PROPOSAL,
  FORMALIZACAO_CHECK_PROPOSAL("omni-channel-proposal/v1/countProposal"),
  FORMALIZACAO_FIND_PROPOSAL("omni-channel-proposal/v1/countProposal"),
  FORMALIZACAO_FIND_PROPOSALS("omni-channel-proposal/v1/findProposals"),
  FORMALIZACAO_REASONS_PROPOSAL("omni-channel-proposal/v1/findProposals"),
  FORMALIZACAO_UPDATE_PROPOSAL("omni-channel-proposal/v1/findProposals");
  
  private String endpoint;
  
  static {
    FORMALIZACAO_FIND_PROPOSAL = new iic("FORMALIZACAO_FIND_PROPOSAL", 2, "omni-channel-proposal/v1/findProposal");
    FORMALIZACAO_AUTHORIZE_PROPOSAL = new iic("FORMALIZACAO_AUTHORIZE_PROPOSAL", 3, "omni-channel-proposal/v1/authorizeProposal");
    FORMALIZACAO_UPDATE_PROPOSAL = new iic("FORMALIZACAO_UPDATE_PROPOSAL", 4, "omni-channel-proposal/v1/updateProposal");
    FORMALIZACAO_REASONS_PROPOSAL = new iic("FORMALIZACAO_REASONS_PROPOSAL", 5, "omni-channel-proposal/v1/reasons");
    FORMALIZACAO_CANCEL_PROPOSAL = new iic("FORMALIZACAO_CANCEL_PROPOSAL", 6, "omni-channel-proposal/v1/proposal/cancel");
    $VALUES = new iic[] { FORMALIZACAO_CHECK_PROPOSAL, FORMALIZACAO_FIND_PROPOSALS, FORMALIZACAO_FIND_PROPOSAL, FORMALIZACAO_AUTHORIZE_PROPOSAL, FORMALIZACAO_UPDATE_PROPOSAL, FORMALIZACAO_REASONS_PROPOSAL, FORMALIZACAO_CANCEL_PROPOSAL };
  }
  
  iic(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */