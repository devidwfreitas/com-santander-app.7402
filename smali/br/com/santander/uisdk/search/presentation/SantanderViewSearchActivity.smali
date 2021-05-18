.class public Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/view/View;

.field private e:Lanu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 40
    sget v0, Lals;->recycler_view_search:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 41
    sget v0, Lals;->edittext_search:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->a:Landroid/widget/EditText;

    .line 42
    sget v0, Lals;->view_search_empty:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->d:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dados"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->b:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lanr;

    invoke-direct {v1, p0}, Lanr;-><init>(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    return-void
.end method

.method public static synthetic b(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Lanp;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->d()Lanp;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 72
    new-instance v0, Lanu;

    iget-object v1, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanu;-><init>(Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->e:Lanu;

    .line 73
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->e:Lanu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    return-void
.end method

.method private c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lans;

    invoke-direct {v0, p0}, Lans;-><init>(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)V

    return-object v0
.end method

.method public static synthetic c(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Lanu;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->e:Lanu;

    return-object v0
.end method

.method private d()Lanp;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lant;

    invoke-direct {v0, p0}, Lant;-><init>(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)V

    return-object v0
.end method

.method public static synthetic d(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic e(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public static synthetic f(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lalu;->santander_view_search:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->a()V

    .line 36
    invoke-direct {p0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->b()V

    .line 37
    return-void
.end method
