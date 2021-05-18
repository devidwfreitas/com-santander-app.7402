.class Lhof;
.super Lhoc;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field protected d:Lcom/santander/app/components/view/SantanderEditText;

.field final synthetic e:Lhob;


# direct methods
.method constructor <init>(Lhob;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 125
    iput-object p1, p0, Lhof;->e:Lhob;

    .line 126
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bd

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 126
    invoke-direct {p0, p1, v0}, Lhoc;-><init>(Lhob;Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lhof;->itemView:Landroid/view/View;

    const v1, 0x7f100468

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lhof;->d:Lcom/santander/app/components/view/SantanderEditText;

    .line 129
    iget-object v0, p0, Lhof;->d:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lhof;->d:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhof;->a(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
