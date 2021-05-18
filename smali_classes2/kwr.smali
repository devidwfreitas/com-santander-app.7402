.class public final enum Lkwr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkwr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkwr;

.field public static final enum AUTHORIZE_PROPOSAL:Lkwr;

.field public static final enum BENEFICIARIES:Lkwr;

.field public static final enum BILLING:Lkwr;

.field public static final enum CAUSES_LIST:Lkwr;

.field public static final enum CHECK_CONTESTATION:Lkwr;

.field public static final enum COVERAGE:Lkwr;

.field public static final enum FAMILY_DETAILS:Lkwr;

.field public static final enum FORMALIZE:Lkwr;

.field public static final enum GENERATE_CONTACT_DATA:Lkwr;

.field public static final enum GENERATE_IDEAL_QUOTATIONS:Lkwr;

.field public static final enum GENERATE_QUESTIONS:Lkwr;

.field public static final enum GENERATE_QUOTATION:Lkwr;

.field public static final enum GET_DETAILS:Lkwr;

.field public static final enum GET_IDEAL_PRODUCT:Lkwr;

.field public static final enum GET_INSURANCE_POSITION:Lkwr;

.field public static final enum GET_PRE_PROPORSAL:Lkwr;

.field public static final enum INSURANCE_CANCEL_ASSISTANCE:Lkwr;

.field public static final enum INSURANCE_DETAILS:Lkwr;

.field public static final enum INSURANCE_FAMILY:Lkwr;

.field public static final enum INSURANCE_GET_SCHEDULING_LIST:Lkwr;

.field public static final enum INSURANCE_GET_SCHEDULING_SITUATION:Lkwr;

.field public static final enum INSURANCE_GET_SUBSERVICES:Lkwr;

.field public static final enum INSURANCE_GET_SUBSERVICES_EVENTS:Lkwr;

.field public static final enum INSURANCE_RESCHEDULE_ASSISTANCE:Lkwr;

.field public static final enum INSURANCE_SCHEDULE_ASSISTANCE:Lkwr;

.field public static final enum LIST_BENEFICIARIES:Lkwr;

.field public static final enum LIST_DOCUMENTS:Lkwr;

.field public static final enum MODULE_CONDITIONS:Lkwr;

.field public static final enum NOTIFY_SINISTER:Lkwr;

.field public static final enum RE_OPEN_SINISTER:Lkwr;

.field public static final enum SINISTER:Lkwr;

.field public static final enum SINISTER_BANK_DATA:Lkwr;

.field public static final enum SINISTER_DETAILS_URL:Lkwr;

.field public static final enum SINISTER_DOCUMENTS:Lkwr;

.field public static final enum SINISTER_DOCUMENTS_DELETE:Lkwr;

.field public static final enum SINISTER_NOTE_URL:Lkwr;

.field public static final enum SINISTER_STEP_CONTINUE:Lkwr;

.field public static final enum SINISTER_STEP_FINISH:Lkwr;

.field public static final enum SINISTER_STEP_OPEN:Lkwr;

.field public static final enum SURVEY_ANSWERS:Lkwr;

.field public static final enum SURVEY_LOSSES:Lkwr;

.field public static final enum SURVEY_QUESTIONS:Lkwr;

.field public static final enum TERMS_CONDITIONS:Lkwr;

.field public static final enum UPDATE_BENEFICIARY:Lkwr;

.field public static final enum UPDATE_DOCUMENT_STATUS:Lkwr;

.field public static final enum UPDATE_INSURED_DATE:Lkwr;


# instance fields
.field private endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_GET_SUBSERVICES"

    const-string v2, "insurance-assistance/v1/get-subservices"

    invoke-direct {v0, v1, v4, v2}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_GET_SUBSERVICES:Lkwr;

    .line 14
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_GET_SUBSERVICES_EVENTS"

    const-string v2, "insurance-assistance/v1/subservices-events/%s/%s/%s"

    invoke-direct {v0, v1, v5, v2}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_GET_SUBSERVICES_EVENTS:Lkwr;

    .line 15
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_GET_SCHEDULING_LIST"

    const-string v2, "insurance-assistance/v1/consult-scheduling"

    invoke-direct {v0, v1, v6, v2}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_GET_SCHEDULING_LIST:Lkwr;

    .line 16
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_GET_SCHEDULING_SITUATION"

    const-string v2, "/insurance-assistance/v1/checkSituation/%s"

    invoke-direct {v0, v1, v7, v2}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_GET_SCHEDULING_SITUATION:Lkwr;

    .line 17
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_SCHEDULE_ASSISTANCE"

    const-string v2, "/insurance-assistance/v1/schedule"

    invoke-direct {v0, v1, v8, v2}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_SCHEDULE_ASSISTANCE:Lkwr;

    .line 18
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_RESCHEDULE_ASSISTANCE"

    const/4 v2, 0x5

    const-string v3, "/insurance-assistance/v1/reschedule"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_RESCHEDULE_ASSISTANCE:Lkwr;

    .line 19
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_CANCEL_ASSISTANCE"

    const/4 v2, 0x6

    const-string v3, "/insurance-assistance/v1/cancel"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_CANCEL_ASSISTANCE:Lkwr;

    .line 20
    new-instance v0, Lkwr;

    const-string v1, "GET_INSURANCE_POSITION"

    const/4 v2, 0x7

    const-string v3, "insurance/v1/get-insurance-position"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GET_INSURANCE_POSITION:Lkwr;

    .line 21
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_FAMILY"

    const/16 v2, 0x8

    const-string v3, "insurances/v1/products"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_FAMILY:Lkwr;

    .line 22
    new-instance v0, Lkwr;

    const-string v1, "FAMILY_DETAILS"

    const/16 v2, 0x9

    const-string v3, "insurances/v1/products/details"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->FAMILY_DETAILS:Lkwr;

    .line 23
    new-instance v0, Lkwr;

    const-string v1, "BENEFICIARIES"

    const/16 v2, 0xa

    const-string v3, "insurances/v1/beneficiaries"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->BENEFICIARIES:Lkwr;

    .line 24
    new-instance v0, Lkwr;

    const-string v1, "BILLING"

    const/16 v2, 0xb

    const-string v3, "insurances/v1/billings"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->BILLING:Lkwr;

    .line 25
    new-instance v0, Lkwr;

    const-string v1, "INSURANCE_DETAILS"

    const/16 v2, 0xc

    const-string v3, "insurances/v1/details"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->INSURANCE_DETAILS:Lkwr;

    .line 26
    new-instance v0, Lkwr;

    const-string v1, "COVERAGE"

    const/16 v2, 0xd

    const-string v3, "insurances/v1/coverage"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->COVERAGE:Lkwr;

    .line 27
    new-instance v0, Lkwr;

    const-string v1, "SINISTER"

    const/16 v2, 0xe

    const-string v3, "losses/v1/all"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER:Lkwr;

    .line 28
    new-instance v0, Lkwr;

    const-string v1, "CAUSES_LIST"

    const/16 v2, 0xf

    const-string v3, "losses/v1/causes"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->CAUSES_LIST:Lkwr;

    .line 29
    new-instance v0, Lkwr;

    const-string v1, "NOTIFY_SINISTER"

    const/16 v2, 0x10

    const-string v3, "losses/v1/patrimony-notification"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->NOTIFY_SINISTER:Lkwr;

    .line 30
    new-instance v0, Lkwr;

    const-string v1, "LIST_DOCUMENTS"

    const/16 v2, 0x11

    const-string v3, "losses/v1/document-status"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->LIST_DOCUMENTS:Lkwr;

    .line 31
    new-instance v0, Lkwr;

    const-string v1, "UPDATE_DOCUMENT_STATUS"

    const/16 v2, 0x12

    const-string v3, "losses/v1/registry-document"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->UPDATE_DOCUMENT_STATUS:Lkwr;

    .line 32
    new-instance v0, Lkwr;

    const-string v1, "SURVEY_LOSSES"

    const/16 v2, 0x13

    const-string v3, "losses/v1/rescheduling-survey"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SURVEY_LOSSES:Lkwr;

    .line 33
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_DETAILS_URL"

    const/16 v2, 0x14

    const-string v3, "losses/v1/details"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_DETAILS_URL:Lkwr;

    .line 34
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_NOTE_URL"

    const/16 v2, 0x15

    const-string v3, "losses/v1/notes"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_NOTE_URL:Lkwr;

    .line 35
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_BANK_DATA"

    const/16 v2, 0x16

    const-string v3, "losses/v1/bank-data"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_BANK_DATA:Lkwr;

    .line 36
    new-instance v0, Lkwr;

    const-string v1, "CHECK_CONTESTATION"

    const/16 v2, 0x17

    const-string v3, "insurance/v1/validate-claim-adjustment/%s/%s/%s/%s"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->CHECK_CONTESTATION:Lkwr;

    .line 37
    new-instance v0, Lkwr;

    const-string v1, "RE_OPEN_SINISTER"

    const/16 v2, 0x18

    const-string v3, "insurance/v1/reopen-claim-adjustment"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->RE_OPEN_SINISTER:Lkwr;

    .line 38
    new-instance v0, Lkwr;

    const-string v1, "GET_PRE_PROPORSAL"

    const/16 v2, 0x19

    const-string v3, "insurances/v1/get-pre-proposal"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GET_PRE_PROPORSAL:Lkwr;

    .line 39
    new-instance v0, Lkwr;

    const-string v1, "GENERATE_IDEAL_QUOTATIONS"

    const/16 v2, 0x1a

    const-string v3, "insurance-sales/v1/generate-ideal-quotations"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GENERATE_IDEAL_QUOTATIONS:Lkwr;

    .line 40
    new-instance v0, Lkwr;

    const-string v1, "GET_IDEAL_PRODUCT"

    const/16 v2, 0x1b

    const-string v3, "insurance-sales/v1/ideal-products"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GET_IDEAL_PRODUCT:Lkwr;

    .line 41
    new-instance v0, Lkwr;

    const-string v1, "GENERATE_QUOTATION"

    const/16 v2, 0x1c

    const-string v3, "insurance-sales/v1/generate-quotation"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GENERATE_QUOTATION:Lkwr;

    .line 42
    new-instance v0, Lkwr;

    const-string v1, "GENERATE_CONTACT_DATA"

    const/16 v2, 0x1d

    const-string v3, "insurance-sales/v1/contact-data"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GENERATE_CONTACT_DATA:Lkwr;

    .line 43
    new-instance v0, Lkwr;

    const-string v1, "GET_DETAILS"

    const/16 v2, 0x1e

    const-string v3, "insurance-sales/v1/details"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GET_DETAILS:Lkwr;

    .line 44
    new-instance v0, Lkwr;

    const-string v1, "GENERATE_QUESTIONS"

    const/16 v2, 0x1f

    const-string v3, "insurance-sales/v1/personal-health-statement"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->GENERATE_QUESTIONS:Lkwr;

    .line 45
    new-instance v0, Lkwr;

    const-string v1, "FORMALIZE"

    const/16 v2, 0x20

    const-string v3, "insurance-sales/v1/formalize"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->FORMALIZE:Lkwr;

    .line 46
    new-instance v0, Lkwr;

    const-string v1, "AUTHORIZE_PROPOSAL"

    const/16 v2, 0x21

    const-string v3, "omni-channel-proposal/v1/authorizeProposal"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->AUTHORIZE_PROPOSAL:Lkwr;

    .line 47
    new-instance v0, Lkwr;

    const-string v1, "LIST_BENEFICIARIES"

    const/16 v2, 0x22

    const-string v3, "insurance/v1/list-beneficiary/%s"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->LIST_BENEFICIARIES:Lkwr;

    .line 48
    new-instance v0, Lkwr;

    const-string v1, "UPDATE_BENEFICIARY"

    const/16 v2, 0x23

    const-string v3, "insurance/v1/update-beneficiary/"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->UPDATE_BENEFICIARY:Lkwr;

    .line 49
    new-instance v0, Lkwr;

    const-string v1, "UPDATE_INSURED_DATE"

    const/16 v2, 0x24

    const-string v3, "insurance/v1/update-insured-data"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->UPDATE_INSURED_DATE:Lkwr;

    .line 52
    new-instance v0, Lkwr;

    const-string v1, "TERMS_CONDITIONS"

    const/16 v2, 0x25

    const-string v3, "presentation-manager/v1/terms-conditions"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->TERMS_CONDITIONS:Lkwr;

    .line 53
    new-instance v0, Lkwr;

    const-string v1, "MODULE_CONDITIONS"

    const/16 v2, 0x26

    const-string v3, "presentation-manager/v1/features"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->MODULE_CONDITIONS:Lkwr;

    .line 54
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_STEP_OPEN"

    const/16 v2, 0x27

    const-string v3, "presentation-manager/v1/claims/steps/open"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_STEP_OPEN:Lkwr;

    .line 55
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_STEP_CONTINUE"

    const/16 v2, 0x28

    const-string v3, "presentation-manager/v1/claims/steps/continue"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_STEP_CONTINUE:Lkwr;

    .line 56
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_STEP_FINISH"

    const/16 v2, 0x29

    const-string v3, "presentation-manager/v1/claims/steps/finish"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_STEP_FINISH:Lkwr;

    .line 57
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_DOCUMENTS"

    const/16 v2, 0x2a

    const-string v3, "presentation-manager/v1/documents"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_DOCUMENTS:Lkwr;

    .line 59
    new-instance v0, Lkwr;

    const-string v1, "SINISTER_DOCUMENTS_DELETE"

    const/16 v2, 0x2b

    const-string v3, "presentation-manager/v1/document/delete"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SINISTER_DOCUMENTS_DELETE:Lkwr;

    .line 60
    new-instance v0, Lkwr;

    const-string v1, "SURVEY_QUESTIONS"

    const/16 v2, 0x2c

    const-string v3, "presentation-manager/v1/satisfaction-survey/questions"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SURVEY_QUESTIONS:Lkwr;

    .line 61
    new-instance v0, Lkwr;

    const-string v1, "SURVEY_ANSWERS"

    const/16 v2, 0x2d

    const-string v3, "presentation-manager/v1/satisfaction-survey/answers"

    invoke-direct {v0, v1, v2, v3}, Lkwr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwr;->SURVEY_ANSWERS:Lkwr;

    .line 10
    const/16 v0, 0x2e

    new-array v0, v0, [Lkwr;

    sget-object v1, Lkwr;->INSURANCE_GET_SUBSERVICES:Lkwr;

    aput-object v1, v0, v4

    sget-object v1, Lkwr;->INSURANCE_GET_SUBSERVICES_EVENTS:Lkwr;

    aput-object v1, v0, v5

    sget-object v1, Lkwr;->INSURANCE_GET_SCHEDULING_LIST:Lkwr;

    aput-object v1, v0, v6

    sget-object v1, Lkwr;->INSURANCE_GET_SCHEDULING_SITUATION:Lkwr;

    aput-object v1, v0, v7

    sget-object v1, Lkwr;->INSURANCE_SCHEDULE_ASSISTANCE:Lkwr;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lkwr;->INSURANCE_RESCHEDULE_ASSISTANCE:Lkwr;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkwr;->INSURANCE_CANCEL_ASSISTANCE:Lkwr;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkwr;->GET_INSURANCE_POSITION:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkwr;->INSURANCE_FAMILY:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lkwr;->FAMILY_DETAILS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lkwr;->BENEFICIARIES:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lkwr;->BILLING:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lkwr;->INSURANCE_DETAILS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lkwr;->COVERAGE:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lkwr;->SINISTER:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lkwr;->CAUSES_LIST:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lkwr;->NOTIFY_SINISTER:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lkwr;->LIST_DOCUMENTS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lkwr;->UPDATE_DOCUMENT_STATUS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lkwr;->SURVEY_LOSSES:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lkwr;->SINISTER_DETAILS_URL:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lkwr;->SINISTER_NOTE_URL:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lkwr;->SINISTER_BANK_DATA:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lkwr;->CHECK_CONTESTATION:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lkwr;->RE_OPEN_SINISTER:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lkwr;->GET_PRE_PROPORSAL:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lkwr;->GENERATE_IDEAL_QUOTATIONS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lkwr;->GET_IDEAL_PRODUCT:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lkwr;->GENERATE_QUOTATION:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lkwr;->GENERATE_CONTACT_DATA:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lkwr;->GET_DETAILS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lkwr;->GENERATE_QUESTIONS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lkwr;->FORMALIZE:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lkwr;->AUTHORIZE_PROPOSAL:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lkwr;->LIST_BENEFICIARIES:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lkwr;->UPDATE_BENEFICIARY:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lkwr;->UPDATE_INSURED_DATE:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lkwr;->TERMS_CONDITIONS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lkwr;->MODULE_CONDITIONS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lkwr;->SINISTER_STEP_OPEN:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lkwr;->SINISTER_STEP_CONTINUE:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lkwr;->SINISTER_STEP_FINISH:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lkwr;->SINISTER_DOCUMENTS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lkwr;->SINISTER_DOCUMENTS_DELETE:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lkwr;->SURVEY_QUESTIONS:Lkwr;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lkwr;->SURVEY_ANSWERS:Lkwr;

    aput-object v2, v0, v1

    sput-object v0, Lkwr;->$VALUES:[Lkwr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lkwr;->endpoint:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkwr;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lkwr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkwr;

    return-object v0
.end method

.method public static values()[Lkwr;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lkwr;->$VALUES:[Lkwr;

    invoke-virtual {v0}, [Lkwr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkwr;

    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lkwr;->endpoint:Ljava/lang/String;

    return-object v0
.end method
