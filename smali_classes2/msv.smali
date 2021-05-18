.class public Lmsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lmsv;->a:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 142
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const v1, 0x7f100d62

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 143
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 146
    iget-object v1, p0, Lmsv;->a:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    invoke-static {v1}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->b(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)Lmuz;

    move-result-object v1

    invoke-interface {v1, v0}, Lmuz;->a(I)V

    .line 147
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    return-void
.end method
