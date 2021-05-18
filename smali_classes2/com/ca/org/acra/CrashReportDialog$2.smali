.class Lcom/ca/org/acra/CrashReportDialog$2;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/org/acra/CrashReportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/org/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lcom/ca/org/acra/CrashReportDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/org/acra/CrashReportDialog;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ca/org/acra/CrashReportDialog$2;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getErrorReporter()Lcom/ca/org/acra/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ca/org/acra/ErrorReporter;->deletePendingNonApprovedReports(Z)V

    .line 202
    iget-object v0, p0, Lcom/ca/org/acra/CrashReportDialog$2;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-virtual {v0}, Lcom/ca/org/acra/CrashReportDialog;->finish()V

    .line 203
    return-void
.end method
