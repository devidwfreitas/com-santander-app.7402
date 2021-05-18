.class public Liyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Liyh;->a:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Liyh;->a:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Liyh;->a:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)Ljaj;

    move-result-object v1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljaj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method
