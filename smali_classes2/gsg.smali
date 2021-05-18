.class public Lgsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lgsg;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lgsg;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method
