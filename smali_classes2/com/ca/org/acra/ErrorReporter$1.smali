.class Lcom/ca/org/acra/ErrorReporter$1;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/org/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/ca/org/acra/ReportingInteractionMode;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/org/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lcom/ca/org/acra/ErrorReporter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/org/acra/ErrorReporter;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/ca/org/acra/ErrorReporter$1;->this$0:Lcom/ca/org/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 569
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter$1;->this$0:Lcom/ca/org/acra/ErrorReporter;

    invoke-static {v0}, Lcom/ca/org/acra/ErrorReporter;->access$000(Lcom/ca/org/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/org/acra/ACRAConfiguration;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ca/org/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 570
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 571
    return-void
.end method
