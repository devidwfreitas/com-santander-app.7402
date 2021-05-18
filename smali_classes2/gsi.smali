.class public Lgsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lgsi;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget-object v0, p0, Lgsi;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    iget-object v1, p0, Lgsi;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b(Landroid/view/View;)V

    .line 161
    :cond_0
    return-void
.end method
