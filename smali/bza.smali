.class Lbza;
.super Lbyz;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbyz;-><init>(Lbyx;)V

    return-void
.end method

.method synthetic constructor <init>(Lbyx;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lbza;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lbhp;

    const-string v1, "Cannot share ShareMediaContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    .prologue
    .line 338
    invoke-static {p1, p0}, Lbyw;->a(Lcom/facebook/share/model/SharePhoto;Lbyz;)V

    .line 339
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lbhp;

    const-string v1, "Cannot share ShareVideoContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
.end method
