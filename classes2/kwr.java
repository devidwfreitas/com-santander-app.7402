public enum kwr {
  AUTHORIZE_PROPOSAL,
  BENEFICIARIES,
  BILLING,
  CAUSES_LIST,
  CHECK_CONTESTATION,
  COVERAGE,
  FAMILY_DETAILS,
  FORMALIZE,
  GENERATE_CONTACT_DATA,
  GENERATE_IDEAL_QUOTATIONS,
  GENERATE_QUESTIONS,
  GENERATE_QUOTATION,
  GET_DETAILS,
  GET_IDEAL_PRODUCT,
  GET_INSURANCE_POSITION,
  GET_PRE_PROPORSAL,
  INSURANCE_CANCEL_ASSISTANCE,
  INSURANCE_DETAILS,
  INSURANCE_FAMILY,
  INSURANCE_GET_SCHEDULING_LIST,
  INSURANCE_GET_SCHEDULING_SITUATION,
  INSURANCE_GET_SUBSERVICES("insurance-assistance/v1/get-subservices"),
  INSURANCE_GET_SUBSERVICES_EVENTS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  INSURANCE_RESCHEDULE_ASSISTANCE("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  INSURANCE_SCHEDULE_ASSISTANCE("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  LIST_BENEFICIARIES("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  LIST_DOCUMENTS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  MODULE_CONDITIONS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  NOTIFY_SINISTER("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  RE_OPEN_SINISTER("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_BANK_DATA("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_DETAILS_URL("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_DOCUMENTS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_DOCUMENTS_DELETE("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_NOTE_URL("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_STEP_CONTINUE("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_STEP_FINISH("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SINISTER_STEP_OPEN("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SURVEY_ANSWERS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SURVEY_LOSSES("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  SURVEY_QUESTIONS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  TERMS_CONDITIONS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  UPDATE_BENEFICIARY("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  UPDATE_DOCUMENT_STATUS("insurance-assistance/v1/subservices-events/%s/%s/%s"),
  UPDATE_INSURED_DATE("insurance-assistance/v1/subservices-events/%s/%s/%s");
  
  private String endpoint;
  
  static {
    INSURANCE_GET_SCHEDULING_LIST = new kwr("INSURANCE_GET_SCHEDULING_LIST", 2, "insurance-assistance/v1/consult-scheduling");
    INSURANCE_GET_SCHEDULING_SITUATION = new kwr("INSURANCE_GET_SCHEDULING_SITUATION", 3, "/insurance-assistance/v1/checkSituation/%s");
    INSURANCE_SCHEDULE_ASSISTANCE = new kwr("INSURANCE_SCHEDULE_ASSISTANCE", 4, "/insurance-assistance/v1/schedule");
    INSURANCE_RESCHEDULE_ASSISTANCE = new kwr("INSURANCE_RESCHEDULE_ASSISTANCE", 5, "/insurance-assistance/v1/reschedule");
    INSURANCE_CANCEL_ASSISTANCE = new kwr("INSURANCE_CANCEL_ASSISTANCE", 6, "/insurance-assistance/v1/cancel");
    GET_INSURANCE_POSITION = new kwr("GET_INSURANCE_POSITION", 7, "insurance/v1/get-insurance-position");
    INSURANCE_FAMILY = new kwr("INSURANCE_FAMILY", 8, "insurances/v1/products");
    FAMILY_DETAILS = new kwr("FAMILY_DETAILS", 9, "insurances/v1/products/details");
    BENEFICIARIES = new kwr("BENEFICIARIES", 10, "insurances/v1/beneficiaries");
    BILLING = new kwr("BILLING", 11, "insurances/v1/billings");
    INSURANCE_DETAILS = new kwr("INSURANCE_DETAILS", 12, "insurances/v1/details");
    COVERAGE = new kwr("COVERAGE", 13, "insurances/v1/coverage");
    SINISTER = new kwr("SINISTER", 14, "losses/v1/all");
    CAUSES_LIST = new kwr("CAUSES_LIST", 15, "losses/v1/causes");
    NOTIFY_SINISTER = new kwr("NOTIFY_SINISTER", 16, "losses/v1/patrimony-notification");
    LIST_DOCUMENTS = new kwr("LIST_DOCUMENTS", 17, "losses/v1/document-status");
    UPDATE_DOCUMENT_STATUS = new kwr("UPDATE_DOCUMENT_STATUS", 18, "losses/v1/registry-document");
    SURVEY_LOSSES = new kwr("SURVEY_LOSSES", 19, "losses/v1/rescheduling-survey");
    SINISTER_DETAILS_URL = new kwr("SINISTER_DETAILS_URL", 20, "losses/v1/details");
    SINISTER_NOTE_URL = new kwr("SINISTER_NOTE_URL", 21, "losses/v1/notes");
    SINISTER_BANK_DATA = new kwr("SINISTER_BANK_DATA", 22, "losses/v1/bank-data");
    CHECK_CONTESTATION = new kwr("CHECK_CONTESTATION", 23, "insurance/v1/validate-claim-adjustment/%s/%s/%s/%s");
    RE_OPEN_SINISTER = new kwr("RE_OPEN_SINISTER", 24, "insurance/v1/reopen-claim-adjustment");
    GET_PRE_PROPORSAL = new kwr("GET_PRE_PROPORSAL", 25, "insurances/v1/get-pre-proposal");
    GENERATE_IDEAL_QUOTATIONS = new kwr("GENERATE_IDEAL_QUOTATIONS", 26, "insurance-sales/v1/generate-ideal-quotations");
    GET_IDEAL_PRODUCT = new kwr("GET_IDEAL_PRODUCT", 27, "insurance-sales/v1/ideal-products");
    GENERATE_QUOTATION = new kwr("GENERATE_QUOTATION", 28, "insurance-sales/v1/generate-quotation");
    GENERATE_CONTACT_DATA = new kwr("GENERATE_CONTACT_DATA", 29, "insurance-sales/v1/contact-data");
    GET_DETAILS = new kwr("GET_DETAILS", 30, "insurance-sales/v1/details");
    GENERATE_QUESTIONS = new kwr("GENERATE_QUESTIONS", 31, "insurance-sales/v1/personal-health-statement");
    FORMALIZE = new kwr("FORMALIZE", 32, "insurance-sales/v1/formalize");
    AUTHORIZE_PROPOSAL = new kwr("AUTHORIZE_PROPOSAL", 33, "omni-channel-proposal/v1/authorizeProposal");
    LIST_BENEFICIARIES = new kwr("LIST_BENEFICIARIES", 34, "insurance/v1/list-beneficiary/%s");
    UPDATE_BENEFICIARY = new kwr("UPDATE_BENEFICIARY", 35, "insurance/v1/update-beneficiary/");
    UPDATE_INSURED_DATE = new kwr("UPDATE_INSURED_DATE", 36, "insurance/v1/update-insured-data");
    TERMS_CONDITIONS = new kwr("TERMS_CONDITIONS", 37, "presentation-manager/v1/terms-conditions");
    MODULE_CONDITIONS = new kwr("MODULE_CONDITIONS", 38, "presentation-manager/v1/features");
    SINISTER_STEP_OPEN = new kwr("SINISTER_STEP_OPEN", 39, "presentation-manager/v1/claims/steps/open");
    SINISTER_STEP_CONTINUE = new kwr("SINISTER_STEP_CONTINUE", 40, "presentation-manager/v1/claims/steps/continue");
    SINISTER_STEP_FINISH = new kwr("SINISTER_STEP_FINISH", 41, "presentation-manager/v1/claims/steps/finish");
    SINISTER_DOCUMENTS = new kwr("SINISTER_DOCUMENTS", 42, "presentation-manager/v1/documents");
    SINISTER_DOCUMENTS_DELETE = new kwr("SINISTER_DOCUMENTS_DELETE", 43, "presentation-manager/v1/document/delete");
    SURVEY_QUESTIONS = new kwr("SURVEY_QUESTIONS", 44, "presentation-manager/v1/satisfaction-survey/questions");
    SURVEY_ANSWERS = new kwr("SURVEY_ANSWERS", 45, "presentation-manager/v1/satisfaction-survey/answers");
    $VALUES = new kwr[] { 
        INSURANCE_GET_SUBSERVICES, INSURANCE_GET_SUBSERVICES_EVENTS, INSURANCE_GET_SCHEDULING_LIST, INSURANCE_GET_SCHEDULING_SITUATION, INSURANCE_SCHEDULE_ASSISTANCE, INSURANCE_RESCHEDULE_ASSISTANCE, INSURANCE_CANCEL_ASSISTANCE, GET_INSURANCE_POSITION, INSURANCE_FAMILY, FAMILY_DETAILS, 
        BENEFICIARIES, BILLING, INSURANCE_DETAILS, COVERAGE, SINISTER, CAUSES_LIST, NOTIFY_SINISTER, LIST_DOCUMENTS, UPDATE_DOCUMENT_STATUS, SURVEY_LOSSES, 
        SINISTER_DETAILS_URL, SINISTER_NOTE_URL, SINISTER_BANK_DATA, CHECK_CONTESTATION, RE_OPEN_SINISTER, GET_PRE_PROPORSAL, GENERATE_IDEAL_QUOTATIONS, GET_IDEAL_PRODUCT, GENERATE_QUOTATION, GENERATE_CONTACT_DATA, 
        GET_DETAILS, GENERATE_QUESTIONS, FORMALIZE, AUTHORIZE_PROPOSAL, LIST_BENEFICIARIES, UPDATE_BENEFICIARY, UPDATE_INSURED_DATE, TERMS_CONDITIONS, MODULE_CONDITIONS, SINISTER_STEP_OPEN, 
        SINISTER_STEP_CONTINUE, SINISTER_STEP_FINISH, SINISTER_DOCUMENTS, SINISTER_DOCUMENTS_DELETE, SURVEY_QUESTIONS, SURVEY_ANSWERS };
  }
  
  kwr(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kwr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */