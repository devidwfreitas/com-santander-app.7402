.class public Lmfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmcb;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmfe;->a:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lmfe;->a:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;Z)V

    .line 98
    return-void
.end method

.method public a(Lmca;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    sget-object v0, Lmca;->LEFT:Lmca;

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lmfe;->a:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;Z)V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v0, Lmca;->RIGHT:Lmca;

    if-ne p1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lmfe;->a:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->b(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;Z)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lmfe;->a:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->c(Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;Z)V

    goto :goto_0
.end method
