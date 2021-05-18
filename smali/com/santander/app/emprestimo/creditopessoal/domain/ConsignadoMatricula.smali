.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected hireDate:Ljava/lang/String;

.field protected registrationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;->registrationId:Ljava/lang/String;

    return-object v0
.end method
