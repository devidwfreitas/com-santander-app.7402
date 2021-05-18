.class public Lmie;
.super Lmic;
.source "SourceFile"


# static fields
.field public static final a:I = 0x4dd

.field public static final b:Ljava/lang/String; = "name-key"

.field public static final c:Ljava/lang/String; = "last-name-key"

.field public static final d:Ljava/lang/String; = "telephone-key"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmic;-><init>()V

    return-void
.end method

.method static synthetic a(Lmie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmie;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lmie;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "telephone-key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    new-instance v1, Lmie;

    invoke-direct {v1}, Lmie;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Lmie;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmie;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "name-key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    const-string v1, "last-name-key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    const-string v1, "telephone-key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_2
    new-instance v1, Lmie;

    invoke-direct {v1}, Lmie;-><init>()V

    .line 55
    invoke-virtual {v1, v0}, Lmie;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method

.method static synthetic b(Lmie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmie;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lmie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmie;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lmie;->e:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 108
    new-instance v2, Lmhs;

    invoke-direct {v2, v3}, Lmhs;-><init>([Ljava/lang/String;)V

    .line 109
    new-instance v3, Lmif;

    invoke-direct {v3, p0, v0, v1}, Lmif;-><init>(Lmie;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmhs;->a(Lmhu;)V

    .line 123
    return-object v2
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p0}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v6

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v1, v7

    invoke-static {v0, v6, v1}, Lmhf;->a(Landroid/content/Context;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 130
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v6

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v7

    const/16 v1, 0x4dd

    invoke-virtual {p0, v0, v1}, Lmie;->requestPermissions([Ljava/lang/String;I)V

    .line 192
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 138
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const-string v3, "display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmie;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmie;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {p0}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090475

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmig;

    invoke-direct {v3, p0}, Lmig;-><init>(Lmie;)V

    invoke-static {v0, v2, v3}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 153
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "account_type"

    .line 155
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "account_name"

    .line 156
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    .line 159
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    .line 160
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data2"

    iget-object v4, p0, Lmie;->f:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data3"

    iget-object v4, p0, Lmie;->g:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    .line 167
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    .line 168
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data1"

    iget-object v4, p0, Lmie;->e:Ljava/lang/String;

    .line 170
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data2"

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :try_start_0
    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :goto_1
    invoke-virtual {p0}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmih;

    invoke-direct {v2, p0}, Lmih;-><init>(Lmie;)V

    invoke-static {v0, v1, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    .line 182
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1}, Lmic;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lmie;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lmie;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmie;->f:Ljava/lang/String;

    .line 82
    :goto_0
    invoke-virtual {p0}, Lmie;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lmie;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmie;->g:Ljava/lang/String;

    .line 89
    :goto_1
    invoke-virtual {p0}, Lmie;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "telephone-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lmie;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "telephone-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmie;->e:Ljava/lang/String;

    .line 95
    :goto_2
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmie;->f:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09070b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmie;->g:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmie;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3}, Lmic;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lmhf;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lmie;->b()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lmie;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x4dd
        :pswitch_0
    .end packed-switch
.end method
