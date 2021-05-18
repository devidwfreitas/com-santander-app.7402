.class public Lgsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lgsk;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lgsk;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-virtual {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b()V

    .line 283
    const/4 v0, 0x1

    return v0
.end method
