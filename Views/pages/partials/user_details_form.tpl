{$errors|@var_dump}
<form id="userForm" class="pure-form step" action="{if $basename == 'userprofile'}/user/profile{else}/user/signup{/if}" method="post" style="padding:20px">
    <input type="hidden" name="mode" value="{if basename == 'userprofile'}update{else}add{/if}" />

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="first_name" text="First Name"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="first_name" id="first_name" value="{if $old.first_name}{$old.first_name}{else}{$user.first_name}{/if}" {if $errors.first_name}class="error"{/if}>
                </label>
                {foreach $errors.first_name as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="last_name" text="Last Name"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="last_name" id="last_name" value="{if $old.last_name}{$old.last_name}{else}{$user.last_name}{/if}" {if $errors.last_name}class="error"{/if}>
                </label>
                {foreach $errors.last_name as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g ">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="email" text="Email"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="email_address" id="email_address" value="{if $old.email_address}{$old.email_address}{else}{$user.email_address}{/if}" {if $errors.email_address}class="error"{/if}>
                </label>
                {foreach $errors.email_address as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g ">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="confirm_email" text="Confirm Email"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="email_address" id="email_address" value="{if $old.confirm_email_address}{$old.confirm_email_address}{/if}" {if $errors.confirm_email_address}class="error"{/if}>
                </label>
                {foreach $errors.confirm_email_address as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="username" text="username"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="username" id="username" value="{if $old.username}{$old.username}{else}{$user.username}{/if}" {if $errors.username}class="error"{/if}>
                </label>
                {foreach $errors.username as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="password" text="Password"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="password" id="password" value="{if basename != 'userprofile' and $old.password}{$old.password}{/if}" {if $errors.password}class="error"{/if}>
                </label>
                {foreach $errors.password as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="confirm_password" text="Confirm Password"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="confirm_password" id="confirm_password" value="{if basename != 'userprofile' and $old.confirm_password}{$old.confirm_password}{/if}" {if $errors.confirm_password}class="error"{/if}>
                </label>
                {foreach $errors.confirm_password as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="gender" text="Gender"}</p>
            </div>
            <div class="pure-u-4-6">
                <select name="gender" {if $errors.state_id}style="border: 1px solid #f00;"{/if}>
                    <option value=""> -- {translate language=$language key="select" text="Select"} -- </option>
                {foreach $genders as $gender}
                    <option value="{$gender->gender_id}" {if $gender->gender_id == $old.gender}selected="selected"{elseif $gender->gender_id == $user.gender}selected="selected"{/if}>{$gender->gender}</option>
                {/foreach}
                </select>
                {foreach $errors.gender as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>


        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question">{translate language=$language key="birth_year" text="Birth year"}</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="birth_year" id="birth_year" value="{if basename != 'userprofile' and $old.birth_year}{$old.birth_year}{/if}" {if $errors.birth_year}class="error"{/if}>
                </label>
                {foreach $errors.birth_year as $error}
                    <div class="pure-u-1 form-error">{$error}</div>
                {/foreach}
            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-1">
                <button type="button" onclick="document.getElementById('userForm').submit();" id="next" class="pure-button">{if basename == 'userprofile'}{translate language=$language key="update_profile" text="Update Profile"}{else}{translate language=$language key="signup" text="Signup"}{/if}</button>
            </div>
        </div>
    </form>
