.class public Lleq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lleq;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lleq;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->c(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Acao"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IrParaHome"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lleq;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->finish()V

    .line 216
    return-void
.end method
