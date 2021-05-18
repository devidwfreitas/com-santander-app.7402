.class public Lcom/santander/app/dpp/DPPListaProgramadaActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field public a:Landroid/support/v7/app/AppCompatActivity;

.field public b:I

.field public c:Landroid/widget/ListView;

.field public d:Landroid/app/Dialog;

.field private e:Landroid/support/v7/view/ActionMode;

.field private f:Lheq;

.field private g:Landroid/app/Activity;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lheq;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lhen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->d:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->e:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Lhen;)Lhen;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->x:Lhen;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Lheq;)Lheq;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->f:Lheq;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->w:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Lhen;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->x:Lhen;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Lheq;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->f:Lheq;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/widget/ListView;)Landroid/view/View;
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 182
    invoke-virtual {p2}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 184
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 187
    :cond_1
    sub-int v0, p1, v0

    .line 188
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f0401a9

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->setContentView(I)V

    .line 65
    iput-object p0, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a:Landroid/support/v7/app/AppCompatActivity;

    .line 66
    iput-object p0, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->g:Landroid/app/Activity;

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 71
    const v1, 0x7f0903e3

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 73
    const v0, 0x7f10080b

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    const v1, 0x7f10080a

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    .line 76
    iget-object v1, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    new-instance v2, Lhdk;

    invoke-direct {v2, p0}, Lhdk;-><init>(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c:Landroid/widget/ListView;

    new-instance v2, Lhdn;

    invoke-direct {v2, p0}, Lhdn;-><init>(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    new-instance v1, Lhdo;

    invoke-direct {v1, p0}, Lhdo;-><init>(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    new-instance v0, Lhdp;

    invoke-direct {v0, p0}, Lhdp;-><init>(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhdp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 178
    return-void
.end method
