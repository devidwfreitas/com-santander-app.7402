.class final Lgpx;
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
    .line 788
    iput-object p1, p0, Lgpx;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lgpx;->b:Lhya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lgpx;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lhya;->a(Landroid/content/Context;I)V

    .line 814
    iget-object v0, p0, Lgpx;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 815
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 792
    packed-switch p1, :pswitch_data_0

    .line 808
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lgpx;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 809
    return-void

    .line 794
    :pswitch_1
    invoke-static {}, Lgpu;->j()V

    goto :goto_0

    .line 799
    :pswitch_2
    invoke-static {}, Lgpu;->i()V

    goto :goto_0

    .line 803
    :pswitch_3
    invoke-static {}, Lgpu;->n()V

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    .line 819
    iget-object v0, p0, Lgpx;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lhya;->b(Landroid/content/Context;I)V

    .line 820
    iget-object v0, p0, Lgpx;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 821
    return-void
.end method
