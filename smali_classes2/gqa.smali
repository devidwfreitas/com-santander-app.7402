.class final Lgqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lhya;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lhya;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lgqa;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lgqa;->b:Lhya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lgqa;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lhya;->a(Landroid/content/Context;I)V

    .line 925
    iget-object v0, p0, Lgqa;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 926
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 918
    invoke-static {}, Lgpu;->j()V

    .line 919
    iget-object v0, p0, Lgqa;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 920
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Lgqa;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lhya;->b(Landroid/content/Context;I)V

    .line 931
    iget-object v0, p0, Lgqa;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 932
    return-void
.end method
