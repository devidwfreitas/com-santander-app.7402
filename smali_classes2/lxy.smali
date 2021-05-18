.class Llxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Llxx;


# direct methods
.method constructor <init>(Llxx;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Llxy;->a:Llxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Llxy;->a:Llxx;

    invoke-static {v0, p4}, Llxx;->a(Llxx;I)V

    .line 132
    return-void
.end method
