.class public Lgsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lgsh;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lgsh;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0, p1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p0, Lgsh;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0, p1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method
