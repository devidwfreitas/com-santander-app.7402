.class public Lcom/santander/app/faq/presentation/FaqTelefonesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lidg;


# instance fields
.field private a:Landroid/widget/ExpandableListView;

.field private b:Lido;

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Libu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lidd;

    invoke-direct {v1, p0, p1}, Lidd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 91
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Libn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->c:Landroid/widget/ListView;

    new-instance v1, Licz;

    invoke-direct {v1, p0, p1}, Licz;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 101
    const v0, 0x7f050014

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->overridePendingTransition(II)V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->setContentView(I)V

    .line 39
    new-instance v0, Lido;

    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->v:Lmip;

    invoke-direct {v0, p0, v1}, Lido;-><init>(Lidg;Lmip;)V

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->b:Lido;

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 44
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    const v0, 0x7f100305

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->c:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 50
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 52
    const v0, 0x7f100306

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->a:Landroid/widget/ExpandableListView;

    .line 53
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->b:Lido;

    invoke-virtual {v1}, Lido;->b()Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 65
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 75
    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->finish()V

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->onBackPressed()V

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f101208 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lgrs;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;->b:Lido;

    invoke-virtual {v0}, Lido;->a()V

    .line 60
    return-void
.end method
