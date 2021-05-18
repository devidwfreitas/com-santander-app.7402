.class Lhos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRegistrationField;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "fields"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "mask"
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "required"
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "format"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lhos;->a:Ljava/util/List;

    return-void
.end method
