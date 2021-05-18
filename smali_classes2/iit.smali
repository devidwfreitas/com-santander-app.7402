.class Liit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Liis;


# direct methods
.method constructor <init>(Liis;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Liit;->c:Liis;

    iput-object p2, p0, Liit;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Liit;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Liit;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Liit;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Liit;->c:Liis;

    invoke-virtual {v0}, Liis;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, ""

    .line 71
    const-string v2, ""

    .line 72
    iget-object v3, p0, Liit;->c:Liis;

    invoke-static {v3}, Liis;->a(Liis;)Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Liit;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Liit;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    return-void
.end method
