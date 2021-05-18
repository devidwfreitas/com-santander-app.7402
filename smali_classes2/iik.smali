.class Liik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Liij;


# direct methods
.method constructor <init>(Liij;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Liik;->c:Liij;

    iput-object p2, p0, Liik;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Liik;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Liik;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Liik;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Liik;->c:Liij;

    invoke-virtual {v0}, Liij;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, ""

    .line 95
    const-string v2, ""

    .line 96
    iget-object v3, p0, Liik;->c:Liij;

    invoke-static {v3}, Liij;->a(Liij;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Liik;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Liik;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    return-void
.end method
