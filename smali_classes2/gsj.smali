.class public Lgsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lgsj;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lgsj;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->c(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 169
    iget-object v0, p0, Lgsj;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-virtual {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->c()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lgsj;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->d(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 171
    iget-object v0, p0, Lgsj;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lgsj;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lgsj;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-virtual {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->c()V

    goto :goto_0
.end method
