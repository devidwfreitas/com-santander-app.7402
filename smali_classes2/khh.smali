.class public Lkhh;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lkhi;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lkhj;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 29
    const-string v0, "ListaOperadorasDialogFragment"

    iput-object v0, p0, Lkhh;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lkhh;->b:Lkhj;

    invoke-interface {v0, p1, p2}, Lkhj;->a(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p0}, Lkhh;->dismiss()V

    .line 55
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lkhh;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lkhh;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040302

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method

.method public a(Lkhj;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lkhh;->b:Lkhj;

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 37
    invoke-virtual {p0}, Lkhh;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 38
    const v0, 0x7f04018f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 40
    const v0, 0x7f100793

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    .line 41
    const v1, 0x7f100794

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lkhh;->a:Landroid/widget/ListView;

    .line 43
    new-instance v1, Lkhl;

    invoke-direct {v1, p0}, Lkhl;-><init>(Lkhi;)V

    .line 45
    iget-object v3, p0, Lkhh;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Lkhl;->a()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    invoke-virtual {v1}, Lkhl;->b()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    return-object v2
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-void
.end method
