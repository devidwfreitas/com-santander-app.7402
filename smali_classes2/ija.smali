.class Lija;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liix;


# direct methods
.method constructor <init>(Liix;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lija;->a:Liix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lija;->a:Liix;

    invoke-virtual {v0}, Liix;->a()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, ""

    .line 135
    const-string v2, ""

    .line 136
    iget-object v3, p0, Lija;->a:Liix;

    invoke-static {v3}, Liix;->a(Liix;)Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
