.class public Lbr/com/santander/dynamicauth/features/sms/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lbr/com/santander/dynamicauth/a/a/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/features/sms/a/a;->b:Ljava/lang/String;

    new-instance v0, Lbr/com/santander/dynamicauth/a/a/a;

    invoke-direct {v0, p1}, Lbr/com/santander/dynamicauth/a/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/a/a;->a:Lbr/com/santander/dynamicauth/a/a/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/a/a;->b:Ljava/lang/String;

    return-object v0
.end method
